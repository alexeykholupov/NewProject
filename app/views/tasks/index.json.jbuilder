json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :content, :status, :start_date, :due_date, :estimations, :project_id, :user_id
  json.url task_url(task, format: :json)
end
