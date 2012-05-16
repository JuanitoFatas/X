# encoding: UTF-8

require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 '新微博'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => '新微博')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                      :text => "Home | X Weibo")
    end
  end

  describe "Help page" do

    it "should have the h1 '帮助'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => '帮助')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                      :text => "Help | X Weibo")
    end
  end

  describe "About page" do

    it "should have the h1 '关于新微博'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => '关于新微博')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                      :text => "About | X Weibo")
    end
  end

end