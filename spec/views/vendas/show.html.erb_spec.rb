require 'rails_helper'

RSpec.describe "vendas/show", type: :view do
  before(:each) do
    @venda = assign(:venda, Venda.create!(
      user: nil,
      caixa: nil,
      valor: 2.5,
      tipo_pagamento: 3,
      locacao: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
