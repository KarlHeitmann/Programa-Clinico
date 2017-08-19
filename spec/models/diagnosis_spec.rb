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

require 'rails_helper'

RSpec.describe Diagnosis, type: :model do
  it "has a valid factory" do
    expect(build(:diagnosis)).to be_valid
  end
  it { is_expected.to validate_presence_of :diagnostico_y_tratamiento }
  it { is_expected.to validate_presence_of :patient }
  
  describe "Associations" do
    it { is_expected.to have_many :stages }
    it { is_expected.to belong_to :patient }
  end
end
