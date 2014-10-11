json.array!(@conventions) do |convention|
  json.extract! convention, :title, :plots, :write_limit, :like_limit
  json.url convention_url(convention, format: :json)
end