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

class Patient < ApplicationRecord
  validates :apellido_paterno, :apellido_materno, :nombre, :rut, :fecha_nacimiento,
    :telefono, :celular, :direccion, :ocupacion, :derivado, presence: true

  has_many :diagnoses
  def show_nombre
    return "#{nombre} #{apellido_paterno} #{apellido_materno}"
  end
end

