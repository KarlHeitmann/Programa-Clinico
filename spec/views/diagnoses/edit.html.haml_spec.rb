require 'rails_helper'

RSpec.describe "diagnoses/edit", type: :view do
  before(:each) do
    @diagnosis = assign(:diagnosis, Diagnosis.create!(
      :diagnostico_y_tratamiento => "MyText",
      :patient => nil
    ))
  end

  it "renders the edit diagnosis form" do
    render

    assert_select "form[action=?][method=?]", diagnosis_path(@diagnosis), "post" do

      assert_select "textarea#diagnosis_diagnostico_y_tratamiento[name=?]", "diagnosis[diagnostico_y_tratamiento]"

      assert_select "input#diagnosis_patient_id[name=?]", "diagnosis[patient_id]"
    end
  end
end
