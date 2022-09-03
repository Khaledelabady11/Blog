json.array! @comments do |comment|
  json.id comment.id
  json.name comment.name
  json.created_at comment.created_at
end
