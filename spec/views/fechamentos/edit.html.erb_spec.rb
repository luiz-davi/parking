require 'rails_helper'

RSpec.describe "fechamentos/edit", type: :view do
  before(:each) do
    @fechamento = assign(:fechamento, Fechamento.create!(
      user: nil,
      caixa: nil,
      valor: 1.5,
      obs: "MyText",
      valor_anterior: 1.5,
      status: 1
    ))
  end

  it "renders the edit fechamento form" do
    render

    assert_select "form[action=?][method=?]", fechamento_path(@fechamento), "post" do

      assert_select "input#fechamento_user_id[name=?]", "fechamento[user_id]"

      assert_select "input#fechamento_caixa_id[name=?]", "fechamento[caixa_id]"

      assert_select "input#fechamento_valor[name=?]", "fechamento[valor]"

      assert_select "textarea#fechamento_obs[name=?]", "fechamento[obs]"

      assert_select "input#fechamento_valor_anterior[name=?]", "fechamento[valor_anterior]"

      assert_select "input#fechamento_status[name=?]", "fechamento[status]"
    end
  end
end
