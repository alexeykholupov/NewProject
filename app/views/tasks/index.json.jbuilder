json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :content, :status, :start_date, :due_date, :estimations
  json.url task_url(task, format: :json)
end
