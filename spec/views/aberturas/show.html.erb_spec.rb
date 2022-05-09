require 'rails_helper'

RSpec.describe "aberturas/show", type: :view do
  before(:each) do
    @abertura = assign(:abertura, Abertura.create!(
      valor: 2.5,
      user: nil,
      caixa: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
