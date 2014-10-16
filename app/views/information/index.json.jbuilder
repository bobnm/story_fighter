json.array!(@information) do |information|
  json.extract! information, :title, :content, :begin_date, :end_date
  json.url information_url(information, format: :json)
end