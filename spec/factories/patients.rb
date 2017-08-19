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

FactoryGirl.define do
  factory :patient do
    apellido_paterno { Faker::Name.last_name }
    apellido_materno { Faker::Name.last_name }
    nombre { Faker::Name.first_name }
    sequence(:rut) { |n| n }
    fecha_nacimiento { Faker::Date.birthday(18, 65) }
    telefono { Faker::PhoneNumber.phone_number }
    celular { Faker::PhoneNumber.cell_phone }
    direccion { Faker::Address.street_address }
    ocupacion { Faker::Job.title }
    derivado { Faker::Name.name_with_middle }
  end
end
