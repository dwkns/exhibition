module CouponsHelper
  def days_left(redemption_date, length)
    if !redemption_date
      return "<td>#{length} days</td>".html_safe
    end

    expiry_date = redemption_date + length.days
    days = distance_of_time_in_words(expiry_date, Time.now)

    if expiry_date.past?
      css_class = "text-red-500"
      text = "Expired #{expiry_date.strftime("%B %d")} (#{days} ago)"
    else
      css_class = "text-green-500"
      text = "Expires #{expiry_date.strftime("%B %d")} (#{days} left)"
    end

    return "<td class='#{css_class}'>#{text}</td>".html_safe
  end
end
