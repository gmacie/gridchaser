json.array!(@activities) do |activity|
  json.extract! activity, :call, :grid, :start_date, :end_date, :home_url, :image_url, :more_info
  json.url activity_url(activity, format: :json)
end
