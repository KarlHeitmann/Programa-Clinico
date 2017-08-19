# == Schema Information
#
# Table name: diagnoses
#
#  id                        :integer          not null, primary key
#  diagnostico_y_tratamiento :text
#  patient_id                :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#
# Indexes
#
#  index_diagnoses_on_patient_id  (patient_id)
#
# Foreign Keys
#
#  fk_rails_b4ae3dea5a  (patient_id => patients.id)
#

class Diagnosis < ApplicationRecord
  belongs_to :patient
end
