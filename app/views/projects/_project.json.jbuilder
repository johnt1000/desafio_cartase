json.extract! project, :id, :title, :descripton, :image, :amount, :goal, :created_at, :updated_at
json.url project_url(project, format: :json)
