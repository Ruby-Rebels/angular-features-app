json.array! @frameworks.each do |framework|
  json.id framework.id
  json.name framework.name
  json.favorites framework.favorites.size
  json.comments framework.comments.size
  json.average_rating framework.average_rating
end
