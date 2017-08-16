require 'rails_helper'

RSpec.describe "diagnoses/show", type: :view do
  before(:each) do
    @diagnosis = assign(:diagnosis, Diagnosis.create!(
      :diagnostico_y_tratamiento => "MyText",
      :patient => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
