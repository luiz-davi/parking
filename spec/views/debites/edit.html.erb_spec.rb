require 'rails_helper'

RSpec.describe "debites/edit", type: :view do
  before(:each) do
    @debite = assign(:debite, Debite.create!(
      user: nil,
      estacionamento: nil,
      caixa: nil,
      valor: 1,
      motivo: "MyText"
    ))
  end

  it "renders the edit debite form" do
    render

    assert_select "form[action=?][method=?]", debite_path(@debite), "post" do

      assert_select "input#debite_user_id[name=?]", "debite[user_id]"

      assert_select "input#debite_estacionamento_id[name=?]", "debite[estacionamento_id]"

      assert_select "input#debite_caixa_id[name=?]", "debite[caixa_id]"

      assert_select "input#debite_valor[name=?]", "debite[valor]"

      assert_select "textarea#debite_motivo[name=?]", "debite[motivo]"
    end
  end
end
