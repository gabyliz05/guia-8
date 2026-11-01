require 'rails_helper'

RSpec.describe "Static pages", type: :request do
  describe "Home page" do
    it "should have the content 'Sample App' and the right title" do
      get static_pages_home_path
      expect(response.body).to include("Sample App")
      expect(response.body).to include("<title>Home | Ruby on Rails Tutorial Sample App</title>")
    end
  end

  describe "Help page" do
    it "should have the content 'Help' and the right title" do
      get static_pages_help_path
      expect(response.body).to include("Help")
      expect(response.body).to include("<title>Help | Ruby on Rails Tutorial Sample App</title>")
    end
  end

  describe "About page" do
    it "should have the content 'About Us' and the right title" do
      get static_pages_about_path
      expect(response.body).to include("About Us")
      expect(response.body).to include("<title>About Us | Ruby on Rails Tutorial Sample App</title>")
    end
  end
end