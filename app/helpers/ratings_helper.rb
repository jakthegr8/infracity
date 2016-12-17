module RatingsHelper
  def star_html(count=1)
    final_html = ''
    5.times do |num|
      final_html += "<option value='#{num}' #{num==(count-1) ? 'selected' : ''}>#{num}</option>"
    end
    "<select class='rating'>
      #{final_html}
    </select>".html_safe
  end
end
