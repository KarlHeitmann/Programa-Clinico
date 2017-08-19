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

require 'rails_helper'

RSpec.describe Stage, type: :model do
  it "has a valid factory" do
    expect(build(:stage)).to be_valid
  end
  it { is_expected.to validate_presence_of :nombre }
  it { is_expected.to validate_presence_of :diagnosis }
  describe "Associations" do
    it { is_expected.to belong_to :diagnosis }
  end
end
