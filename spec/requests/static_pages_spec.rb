require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    before(:all) { visit '/welcome/index' }

    it "should have the content 'Kansas City Pensions' " do
      visit '/welcome/index'
      expect(page).to have_content('Kansas City Pensions')
    end
    
    describe "should have a blog feed on the page" do
      it { should have_link('Blog') }
      
      describe "should have the three most recent posts displayed" do
        it { should have_link('post/1/') }
        it { should have_link('post/2/') }
        it { should have_link(post3.content) }
      end
    end

    describe "About us" do
      it "should have the content 'About us' " do
        visit '/welcome/about'
        expect(page).to have_content('About us')
      end
    end

    describe "Contact" do
      it "should have the content 'Contact' " do
        visit '/welcome/contact'
        expect(page).to have_content('Contact')
      end
    end
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    click_link "Kansas City Pensions"
    page.should have_selector 'h1', text: 'Sample App'
  end
end
