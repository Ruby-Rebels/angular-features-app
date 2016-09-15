json.array! @frameworks.each do |framework|
  json.partial! 'api/v1/partials/framework_ratings', framework: framework
end
