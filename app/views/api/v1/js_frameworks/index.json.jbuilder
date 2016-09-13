json.array! @js_frameworks.each do |framework|
  json.id framework.id
  json.name framework.name
  json.author framework.author
  json.source framework.source
  json.documentation framework.documentation
  json.favorite @favorites.include?(framework)
end
