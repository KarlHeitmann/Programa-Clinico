# == Schema Information
#
# Table name: stages
#
#  id           :integer          not null, primary key
#  nombre       :string
#  diagnosis_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_stages_on_diagnosis_id  (diagnosis_id)
#
# Foreign Keys
#
#  fk_rails_e6166a2421  (diagnosis_id => diagnoses.id)
#

class Stage < ApplicationRecord
  validates :nombre, :diagnosis, presence: true
  belongs_to :diagnosis
end
