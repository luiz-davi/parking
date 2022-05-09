require 'rails_helper'

RSpec.describe "fechamentos/index", type: :view do
  before(:each) do
    assign(:fechamentos, [
      Fechamento.create!(
        user: nil,
        caixa: nil,
        valor: 2.5,
        obs: "MyText",
        valor_anterior: 3.5,
        status: 4
      ),
      Fechamento.create!(
        user: nil,
        caixa: nil,
        valor: 2.5,
        obs: "MyText",
        valor_anterior: 3.5,
        status: 4
      )
    ])
  end

  it "renders a list of fechamentos" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
