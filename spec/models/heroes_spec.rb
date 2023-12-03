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

end