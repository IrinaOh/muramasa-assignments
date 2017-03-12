module Header

  def open_menu
  	page.driver.browser.manage.window.resize_to(375,667)
    page.find(:css, "a[id='mobile-nav-link']").click
  end

  def compare_links
    page.all(:css, 'nav#mobile-nav-container > ul ').each do |li|
      	li.click if href.to_s eql? a.text().to_s do
      		puts "this is a correct page"
      	end
    end
  end

end