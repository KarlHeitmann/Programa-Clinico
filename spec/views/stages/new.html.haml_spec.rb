require 'rails_helper'

RSpec.describe "stages/new", type: :view do
  before(:each) do
    assign(:stage, Stage.new(
      :nombre => "MyString",
      :diagnosis => nil
    ))
  end

  it "renders new stage form" do
    render

    assert_select "form[action=?][method=?]", stages_path, "post" do

      assert_select "input#stage_nombre[name=?]", "stage[nombre]"

      assert_select "input#stage_diagnosis_id[name=?]", "stage[diagnosis_id]"
    end
  end
end
