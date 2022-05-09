require 'rails_helper'

RSpec.describe "vendas/index", type: :view do
  before(:each) do
    assign(:vendas, [
      Venda.create!(
        user: nil,
        caixa: nil,
        valor: 2.5,
        tipo_pagamento: 3,
        locacao: nil
      ),
      Venda.create!(
        user: nil,
        caixa: nil,
        valor: 2.5,
        tipo_pagamento: 3,
        locacao: nil
      )
    ])
  end

  it "renders a list of vendas" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
