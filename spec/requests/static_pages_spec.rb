require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should have the content 'Template App'" do
			visit '/static_pages/home'
			page.should have_content('Template App')
		end
	end
	
	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end
	end

	describe "About page" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			page.should have_content('About Us')
		end
	end

	describe "Contact Us page" do
		it "should have the content 'Contact Us'" do
			visit '/static_pages/contactus'
			page.should have_content('Contact Us')
		end
	end

	describe "Contact Us homepage link" do
		it "should link back to the homepage" do
			visit '/static_pages/contactus'
			page.should have_selector('a', href: '/static_pages/home')
		end
	end
end
