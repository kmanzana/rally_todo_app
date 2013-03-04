require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Kelton's ToDo App" do
      visit root_path
      page.should have_content("Kelton's ToDo App")
    end

    before { visit root_path }
    describe "the empty list" do
      it "should show an empty list" do
        page.should have_selector('h3', text: 'Create')
        page.should have_selector('h4', text: "List: #{Time.now.strftime("%Y%m%d%H%M%S")}") # deliberately omitting seconds
      end

      it "should show a default item"

      it "should allow the user to add an item"

      it "should allow the user to mark an item as complete"
    end
  end
end