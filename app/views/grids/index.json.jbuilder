json.array!(@grids) do |grid|
  json.extract! grid, :status, :band, :mode, :call, :grid_sqare, :country
  json.url grid_url(grid, format: :json)
end
