json.array!(@vocabularies) do |vocabulary|
  json.extract! vocabulary, :word, :translated, :definition, :pronunciation, :image
  json.url vocabulary_url(vocabulary, format: :json)
end
