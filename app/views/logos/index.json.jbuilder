json.array!(@logos) do |logo|
  json.extract! logo, :id, :post_id, :designer_id, :title
  json.url logo_url(logo, format: :json)
end
