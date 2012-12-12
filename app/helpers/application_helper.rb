module ApplicationHelper
  def handle_url(url)
    if url.starts_with?('http')|| url.starts_with('https')
      url
    else
      'http://' +url
    end
  end
end
