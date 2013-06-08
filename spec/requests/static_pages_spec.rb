require 'spec_helper'
describe "Static pages" do

  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe "Home page" do
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector 'title', text: "#{base_title}"
    end
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector 'h1', text: 'Sample App'
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector 'title', text: "#{base_title} | Home"
    end
  end

  describe "Help page" do
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector 'title', text: "#{base_title} | Help"
    end
    it "should have the content 'Help" do
      visit '/static_pages/help'
      page.should have_selector 'h1', text: 'Help'
    end
  end

  describe 'About page' do
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector 'title', text: "#{base_title} | About"
    end
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector 'h1', text: 'About Us'
    end
  end

  describe 'Contact page' do
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector 'title', text: "#{base_title} | Contact"
    end
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector 'h1', text: 'Contact'
    end
  end

end
