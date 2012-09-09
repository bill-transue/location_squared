module FoursquareWorld
  def foursquare_account
    @foursquare_account ||= FactoryGirl.build :user
  end
end

Given /^I login with my Foursquare account$/ do
  OmniAuth.config.add_mock(:foursquare, :uid => foursquare_account.foursquare_id, :extra => { :raw_info => {
    :firstName => foursquare_account.name,
    :photo => foursquare_account.photo } }

  visit "/auth/foursquare"
end

Then /^I should have an account created$/ do
  (user = User.find_by_foursquare_id(foursquare_account.foursquare_id)).should_not be_nil
  user.name.should == foursquare_account.name
  user.photo.should == foursquare_account.photo
end

Then /^I should see my Foursquare username$/ do
  pending "View creation..."
end
