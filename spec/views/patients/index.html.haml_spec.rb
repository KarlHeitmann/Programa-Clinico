require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        :apellido_paterno => "Apellido Paterno",
        :apellido_materno => "Apellido Materno",
        :nombre => "Nombre",
        :rut => "Rut",
        :telefono => "Telefono",
        :celular => "Celular",
        :direccion => "Direccion",
        :ocupacion => "Ocupacion",
        :derivado => "Derivado"
      ),
      Patient.create!(
        :apellido_paterno => "Apellido Paterno",
        :apellido_materno => "Apellido Materno",
        :nombre => "Nombre",
        :rut => "Rut",
        :telefono => "Telefono",
        :celular => "Celular",
        :direccion => "Direccion",
        :ocupacion => "Ocupacion",
        :derivado => "Derivado"
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "Apellido Paterno".to_s, :count => 2
    assert_select "tr>td", :text => "Apellido Materno".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Rut".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    assert_select "tr>td", :text => "Celular".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    assert_select "tr>td", :text => "Ocupacion".to_s, :count => 2
    assert_select "tr>td", :text => "Derivado".to_s, :count => 2
  end
end
