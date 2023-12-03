require 'rails_helper'

RSpec.describe Api::V1::HeroesController, type: :controller do

  before{@hero = Hero.create(name: 'flash', power: 'velocidade')}

  describe 'GET /api/v1/heroes' do
    it 'Consegue listar todos os heroes e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/heroes/id' do
    it 'Consegue listar um hero especifico e retornar status 200?' do
      get :show, params: {id: @hero.id}
      expect(response.body).to include_json(id: @hero.id)
      expect(response).to have_http_status(200)
    end
  end

end