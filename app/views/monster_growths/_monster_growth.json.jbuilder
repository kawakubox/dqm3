json.extract! monster_growth, :id, :monster_id, :level, :hp, :mp, :attack, :defence, :speed, :intelligence, :created_at, :updated_at
json.url monster_growth_url(monster_growth, format: :json)
