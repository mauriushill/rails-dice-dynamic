class DiceController < ApplicationController
  def game
   

    render({ :template => "dice_templates/home" })
  end

  def two
    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("how_many_sides").to_i
    @rolls = []

  @num_dice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end

    render({ :template => "dice_templates/dice_two_six" })
  end

end
