json.array!(@blogs) do |blog|
  json.extract! blog, :id, :post_title, :entry
  json.url blog_url(blog, format: :json)
end
