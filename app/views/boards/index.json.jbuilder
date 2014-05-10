json.array!(@boards) do |board|
  json.extract! board, :id, :title, :description, :preview_id, :user_id
  json.url board_url(board, format: :json)
end
