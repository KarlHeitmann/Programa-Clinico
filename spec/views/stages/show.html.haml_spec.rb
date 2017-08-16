require 'rails_helper'

RSpec.describe "stages/show", type: :view do
  before(:each) do
    @stage = assign(:stage, Stage.create!(
      :nombre => "Nombre",
      :diagnosis => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(//)
  end
end
