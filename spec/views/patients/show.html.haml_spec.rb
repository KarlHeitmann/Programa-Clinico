require 'rails_helper'

RSpec.describe "patients/show", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :apellido_paterno => "Apellido Paterno",
      :apellido_materno => "Apellido Materno",
      :nombre => "Nombre",
      :rut => "Rut",
      :telefono => "Telefono",
      :celular => "Celular",
      :direccion => "Direccion",
      :ocupacion => "Ocupacion",
      :derivado => "Derivado"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Apellido Paterno/)
    expect(rendered).to match(/Apellido Materno/)
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Rut/)
    expect(rendered).to match(/Telefono/)
    expect(rendered).to match(/Celular/)
    expect(rendered).to match(/Direccion/)
    expect(rendered).to match(/Ocupacion/)
    expect(rendered).to match(/Derivado/)
  end
end
