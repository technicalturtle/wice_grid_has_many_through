json.array!(@user_project_participations) do |user_project_participation|
  json.extract! user_project_participation, :id, :project_id, :user_id
  json.url user_project_participation_url(user_project_participation, format: :json)
end
