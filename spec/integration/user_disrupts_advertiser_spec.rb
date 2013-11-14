require File.expand_path('spec/helper')

describe "User disrupts advertiser", :js => true do
  context "no one in queue" do
    it "allows the user to disrupt" do
      visit '/'
      click_link 'DISRUPT'
      # within("#disrupt-button") do
      expect(page).to have_content 'DISRUPTAD!'
      # end
    end
  end
end