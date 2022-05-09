require 'rails_helper'

RSpec.describe "aberturas/new", type: :view do
  before(:each) do
    assign(:abertura, Abertura.new(
      valor: 1.5,
      user: nil,
      caixa: nil
    ))
  end

  it "renders new abertura form" do
    render

    assert_select "form[action=?][method=?]", aberturas_path, "post" do

      assert_select "input#abertura_valor[name=?]", "abertura[valor]"

      assert_select "input#abertura_user_id[name=?]", "abertura[user_id]"

      assert_select "input#abertura_caixa_id[name=?]", "abertura[caixa_id]"
    end
  end
end
