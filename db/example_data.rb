module FixtureReplacement

  attributes_for :connector do |a|
    a.page = default_page
    a.container = "main"
    a.content_block = default_html_block
	end

  attributes_for :html_block do |a|
    a.name = "About Us"
    a.content = "<h1>About Us</h1>\n<p>Lorem ipsum dolor sit amet...</p>"
	end

  attributes_for :page do |a|
    a.name = "Home"
    a.path = "/"
    a.template = default_page_template
    a.section = default_section
	end

  attributes_for :page_template do |a|
    a.name = "Foo"
    a.file_name = "foo"
  end

  attributes_for :portlet do |a|
    a.name = "Test"
    a.portlet_type = default_portlet_type
  end

  attributes_for :portlet_type do |a|
    a.name = "Test"
  end
  
  attributes_for :section do |a|
    a.name = "My Site"
  end

  attributes_for :ruby_haml_portlet do |a|
  end

  attributes_for :user do |a|
    a.first_name = "Test"
    a.last_name = "User"
    a.login = "test_#{String.random(6)}"
    a.email = "#{a.login}@example.com"
    a.password = a.password_confirmation = "password"
    a.created_at = 5.days.ago
  end

end