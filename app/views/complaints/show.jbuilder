json.complainant do
  json.number @html.css("#persondetailrow td")[1].css("font").text
  json.date @html.css("#regstdate").css("font").text.strip
  json.mobile_number @html.css("#phone").css("font").text.strip
  json.email @html.css("#mail").css("font").text.strip
  json.address @html.css("#address").css("font").text.strip
end

json.info do
  @html.css("#dept").css("font").text.strip
  @html.css("#complnttype").css("font").text.strip
  @html.css("#comptitle").css("font").text.strip
  @html.css("#complaintmode").css("font").text.strip
  @html.css("#description").css("font").text.strip
  @html.css("td#view").css("font").text.strip
end

json.messages @html.css("#rowid") do |message|
  json.date message.css("#compdate").text.strip
  json.message message.css("#message").text.strip
  json.user message.css("#user").text.strip
end
