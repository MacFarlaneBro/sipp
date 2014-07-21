module ApplicationHelper
  def section_title(page_title)
    if(!page_title.empty?) 
      ": #{page_title}"
    end
  end
  def full_title(page_title)
    base_title = "Kansas City Pensions"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
