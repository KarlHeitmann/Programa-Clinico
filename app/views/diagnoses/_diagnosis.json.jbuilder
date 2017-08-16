json.extract! diagnosis, :id, :diagnostico_y_tratamiento, :patient_id, :created_at, :updated_at
json.url diagnosis_url(diagnosis, format: :json)