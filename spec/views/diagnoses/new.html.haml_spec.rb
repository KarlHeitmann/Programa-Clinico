require 'rails_helper'

RSpec.describe "diagnoses/new", type: :view do
  before(:each) do
    assign(:diagnosis, Diagnosis.new(
      :diagnostico_y_tratamiento => "MyText",
      :patient => nil
    ))
  end

  it "renders new diagnosis form" do
    render

    assert_select "form[action=?][method=?]", diagnoses_path, "post" do

      assert_select "textarea#diagnosis_diagnostico_y_tratamiento[name=?]", "diagnosis[diagnostico_y_tratamiento]"

      assert_select "input#diagnosis_patient_id[name=?]", "diagnosis[patient_id]"
    end
  end
end
