require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Kelton's ToDo App" do
      visit root_path
      page.should have_content("Kelton's ToDo App")
    end
  end
end