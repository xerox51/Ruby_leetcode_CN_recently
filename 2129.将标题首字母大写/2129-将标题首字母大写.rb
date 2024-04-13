# @param {String} title
# @return {String}
def capitalize_title(title)
  s = title.split.each { |item| if item.length > 2 then item.capitalize! else item.downcase! end }
  s.join(" ")
end
