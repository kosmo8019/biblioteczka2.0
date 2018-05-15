json.extract! ksiazka, :id, :tytul, :opis, :autor, :created_at, :updated_at
json.url ksiazka_url(ksiazka, format: :json)
