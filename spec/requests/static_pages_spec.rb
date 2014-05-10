require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/'
      expect(page).to have_content('Rola Blog')
    end

    it "should have the title 'home'" do
      visit '/'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App ")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
     visit '/help'
     expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/about'
      expect(page).to have_content('About Us')
    end

    it "should have the content 'About Us'" do
      visit '/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the content 'Contact'" do
      visit '/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end