require 'rails_helper'

RSpec.describe "fechamentos/show", type: :view do
  before(:each) do
    @fechamento = assign(:fechamento, Fechamento.create!(
      user: nil,
      caixa: nil,
      valor: 2.5,
      obs: "MyText",
      valor_anterior: 3.5,
      status: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4/)
  end
end
