require 'rails_helper'

RSpec.describe "stages/edit", type: :view do
  before(:each) do
    @stage = assign(:stage, Stage.create!(
      :nombre => "MyString",
      :diagnosis => nil
    ))
  end

  it "renders the edit stage form" do
    render

    assert_select "form[action=?][method=?]", stage_path(@stage), "post" do

      assert_select "input#stage_nombre[name=?]", "stage[nombre]"

      assert_select "input#stage_diagnosis_id[name=?]", "stage[diagnosis_id]"
    end
  end
end
