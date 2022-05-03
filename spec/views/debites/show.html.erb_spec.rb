require 'rails_helper'

RSpec.describe "debites/show", type: :view do
  before(:each) do
    @debite = assign(:debite, Debite.create!(
      user: nil,
      estacionamento: nil,
      caixa: nil,
      valor: 2,
      motivo: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
