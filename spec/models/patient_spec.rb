# == Schema Information
#
# Table name: patients
#
#  id               :integer          not null, primary key
#  apellido_paterno :string
#  apellido_materno :string
#  nombre           :string
#  rut              :string
#  fecha_nacimiento :datetime
#  telefono         :string
#  celular          :string
#  direccion        :string
#  ocupacion        :string
#  derivado         :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe Patient, type: :model do
  it "has a valid factory" do
    expect(build(:patient)).to be_valid
  end
  it { is_expected.to validate_presence_of :apellido_paterno }
  it { is_expected.to validate_presence_of :apellido_materno }
  it { is_expected.to validate_presence_of :nombre }
  it { is_expected.to validate_presence_of :rut }
  it { is_expected.to validate_presence_of :fecha_nacimiento }
  it { is_expected.to validate_presence_of :telefono }
  it { is_expected.to validate_presence_of :celular }
  it { is_expected.to validate_presence_of :direccion }
  it { is_expected.to validate_presence_of :ocupacion }
  it { is_expected.to validate_presence_of :derivado }
  
  describe "Associations" do
    it { is_expected.to have_many :diagnoses }
  end
end
