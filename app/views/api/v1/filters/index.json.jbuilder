json.array! @frameworks.each do |framework|
  json.id framework.id
  json.name framework.name
  json.documentation framework.documentation
  json.source framework.source
  json.author framework.author
end
