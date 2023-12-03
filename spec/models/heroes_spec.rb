require 'rails_helper'

RSpec.describe Hero, type: :model do

  before{@hero = Hero.new}

  describe 'Testes de preenchimento do model Hero' do

    it 'name consegue ser preenchido?' do
      @hero.name = 'super homem'
      expect(@hero.name).to eq('super homem')
    end

    it 'power consegue ser preenchido?' do
      @hero.power = 'variados'
      expect(@hero.power).to eq('variados')
    end

  end

  describe 'Testes de validação do model Hero' do

    it 'hero valido com campos obrigatorios preenchidos?' do
      @hero.name = 'batman'
      @hero.power = 'inteligencia'
      expect(@hero).to be_valid
    end

    it 'hero invalido com campos obrigatorios não preenchidos?' do
      hero = Hero.new
      expect(@hero).to be_invalid
    end

  end

end