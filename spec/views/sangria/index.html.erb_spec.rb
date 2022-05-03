require 'rails_helper'

RSpec.describe "sangria/index", type: :view do
  before(:each) do
    assign(:sangria, [
      Sangrium.create!(
        user: nil,
        estacionamento: nil,
        caixa: nil,
        valor: 2,
        motivo: "MyText"
      ),
      Sangrium.create!(
        user: nil,
        estacionamento: nil,
        caixa: nil,
        valor: 2,
        motivo: "MyText"
      )
    ])
  end

  it "renders a list of sangria" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
