class GoogleLandingPage < AutomationFramework::Utilities
  include Capybara::DSL

  def enter_search_text(search_text)
    page.fill_in 'lst-ib', with: search_text
  end

  def click_search
    page.click_on 'Search'
  end

  def find_wiki
    click_link ('Muramasa - Wikipedia')
    page == 'https://en.wikipedia.org/wiki/Muramasa'
    page.text.include? ('The earliest known work of the school is dated at 1501') do
      if true
        puts "The earliest known work of the school is dated at 1501"
      else
        puts "Could not find that text fragment"
      end
    end
  end

end