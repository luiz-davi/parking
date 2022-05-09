require 'rails_helper'

RSpec.describe "aberturas/index", type: :view do
  before(:each) do
    assign(:aberturas, [
      Abertura.create!(
        valor: 2.5,
        user: nil,
        caixa: nil
      ),
      Abertura.create!(
        valor: 2.5,
        user: nil,
        caixa: nil
      )
    ])
  end

  it "renders a list of aberturas" do
    render
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
