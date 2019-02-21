module ApplicationHelper
  # Returns the full title on a per-page basis.
  # Documentation comment
  def full_title(page_title = '') # Method def, option arg
    # Variable assignment
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty? # Boolean test
      base_title  # Implicit return
    else
      page_title + " | " + base_title # String concatenation
    end
  end
end
