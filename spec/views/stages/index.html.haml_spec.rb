require 'rails_helper'

RSpec.describe "stages/index", type: :view do
  before(:each) do
    assign(:stages, [
      Stage.create!(
        :nombre => "Nombre",
        :diagnosis => nil
      ),
      Stage.create!(
        :nombre => "Nombre",
        :diagnosis => nil
      )
    ])
  end

  it "renders a list of stages" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
