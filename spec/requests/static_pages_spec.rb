require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    before(:all) { visit '/welcome/index' }

    it "should have the content 'Kansas City Pensions' " do
      visit '/welcome/index'
      expect(page).to have_content('Kansas City Pensions')
    end

    it "should have a blog feed on the page" do
      it { should have_link('Blog') }
      
      it "should have the three most recent posts displayed" do
        it { should have_content(post1.content) }
        it { should have_content(post2.content) }
        it { should have_content(post3.content) }
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
end
