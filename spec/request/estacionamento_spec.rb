require 'rails_helper'

RSpec.describe 'Estacionamentos resources', type: :request do

    describe "GET /estacionamentos" do
        let!(:estacionamento) { FactoryBot.create(:estacionamento, nome: 'parking') }

        it "mostrar dados do estabelecimento" do
            get "/estacionamentos/#{estacionamento.id}"

            expect(response).to have_http_status(:ok)
        end
    end

end