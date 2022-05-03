require 'rails_helper'

RSpec.describe "sangria/new", type: :view do
  before(:each) do
    assign(:sangrium, Sangrium.new(
      user: nil,
      estacionamento: nil,
      caixa: nil,
      valor: 1,
      motivo: "MyText"
    ))
  end

  it "renders new sangrium form" do
    render

    assert_select "form[action=?][method=?]", sangria_path, "post" do

      assert_select "input#sangrium_user_id[name=?]", "sangrium[user_id]"

      assert_select "input#sangrium_estacionamento_id[name=?]", "sangrium[estacionamento_id]"

      assert_select "input#sangrium_caixa_id[name=?]", "sangrium[caixa_id]"

      assert_select "input#sangrium_valor[name=?]", "sangrium[valor]"

      assert_select "textarea#sangrium_motivo[name=?]", "sangrium[motivo]"
    end
  end
end
