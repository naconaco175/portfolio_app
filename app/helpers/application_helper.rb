module ApplicationHelper

  def page_title(page_title = '')
    base_title = '麺道'
    if page_title.blank?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
