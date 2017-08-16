require 'rails_helper'

RSpec.describe "diagnoses/index", type: :view do
  before(:each) do
    assign(:diagnoses, [
      Diagnosis.create!(
        :diagnostico_y_tratamiento => "MyText",
        :patient => nil
      ),
      Diagnosis.create!(
        :diagnostico_y_tratamiento => "MyText",
        :patient => nil
      )
    ])
  end

  it "renders a list of diagnoses" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
