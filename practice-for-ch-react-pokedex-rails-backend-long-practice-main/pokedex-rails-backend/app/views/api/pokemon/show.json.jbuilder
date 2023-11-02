moves = @pokemon.moves.pluck(:name)

json.extract! @pokemon, :image_url, :id, :attack, :defense, :name, :poke_type, :captured, :created_at, :updated_at
json.moves moves 
