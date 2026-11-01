require 'rails_helper'

RSpec.describe "Static pages", type: :request do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      get static_pages_home_path
      expect(response.body).to include("Sample App")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      get static_pages_help_path
      expect(response.body).to include("Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      get static_pages_about_path
      expect(response.body).to include("About Us")
    end
  end
end