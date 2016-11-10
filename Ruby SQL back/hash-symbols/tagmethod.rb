def tag(name, content, options = {})

  attr_strings = ""
  options.each do |key, value|
    attr_strings += "#{key}='#{value}'"
  end
  return "<#{name} #{attr_strings}>#{content}</#{name}>"
end

p tag("a", "Google it", {href: "www.google.com", class: "btn", id: "main link", style: "color: red"})
p tag("h1", "Le wagon")
# <a href='google.com' class='btn'>google it </a>