require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should have the content 'Template App'" do
			visit '/static_pages/home'
			page.should have_content('Template App')
		end
	end
end
