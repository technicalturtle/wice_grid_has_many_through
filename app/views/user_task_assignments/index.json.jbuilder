json.array!(@user_task_assignments) do |user_task_assignment|
  json.extract! user_task_assignment, :id, :task_id, :user_id
  json.url user_task_assignment_url(user_task_assignment, format: :json)
end
