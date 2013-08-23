json.array!(@griddbs) do |griddb|
  json.extract! griddb, :entity, :log_of, :call_sign, :ffma_count
  json.url griddb_url(griddb, format: :json)
end
