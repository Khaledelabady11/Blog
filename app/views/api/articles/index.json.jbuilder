json.array! @articles do |article|
  json.id article.id
  json.title article.title
  json.body article.body

  json.comment do
    json.partial! 'comments/comment', comment: article
  end

  json.created_at article.created_at
 end
