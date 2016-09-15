json.id framework.id
json.name framework.name
json.author framework.author
json.documentation framework.documentation
json.source framework.source
json.email current_user.email
json.comments framework.comments.order(created_at: :desc).each do |comment|
  json.comment_id comment.id
  json.comment_text comment.comment_text
  json.user_id comment.user.id
  json.email comment.user.email
end
