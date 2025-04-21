json.extract! joke, :id, :content, :rank_avg, :category_id, :user_id, :created_at, :updated_at
json.url joke_url(joke, format: :json)
