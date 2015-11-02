json.array!(@test_gens) do |test_gen|
  json.extract! test_gen, :id, :game, :score
  json.url test_gen_url(test_gen, format: :json)
end
