class CardController < ApplicationController
  require 'carrierwave/processing/mini_magick'

  def hi
  # 	@card = Creature.new
		# @card.name = "Aqua Hulcus"
		# @card.civilization = "Water"
		# @card.cost = 3
		# @card.mana_val = 1
		# @card.shield_trigger = false
		# @card.power = 2000
		# @card.race = "Liquid People"
		# @card.evolution = false
		# @card.effects << "draw_card"
		# File.open("/home/razvann/Desktop/aqua_hulcus") do |f|
		# 	@card.avatar = f 
		# end
		# @card.save
		@card = Card.find(4)
  		@number = Effect.send :draw_card, 5
  end
  def effect

  end

  def card_params
  	params.require(:cards).permit()
  end
end
