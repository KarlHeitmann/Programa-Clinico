require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :apellido_paterno => "MyString",
      :apellido_materno => "MyString",
      :nombre => "MyString",
      :rut => "MyString",
      :telefono => "MyString",
      :celular => "MyString",
      :direccion => "MyString",
      :ocupacion => "MyString",
      :derivado => "MyString"
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input#patient_apellido_paterno[name=?]", "patient[apellido_paterno]"

      assert_select "input#patient_apellido_materno[name=?]", "patient[apellido_materno]"

      assert_select "input#patient_nombre[name=?]", "patient[nombre]"

      assert_select "input#patient_rut[name=?]", "patient[rut]"

      assert_select "input#patient_telefono[name=?]", "patient[telefono]"

      assert_select "input#patient_celular[name=?]", "patient[celular]"

      assert_select "input#patient_direccion[name=?]", "patient[direccion]"

      assert_select "input#patient_ocupacion[name=?]", "patient[ocupacion]"

      assert_select "input#patient_derivado[name=?]", "patient[derivado]"
    end
  end
end
