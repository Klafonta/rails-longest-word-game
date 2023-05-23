class GamesController < ApplicationController

  def new
    @letters = []
    10.times { @letters << ('a'..'z').to_a.sample }
  end

  def score
    @suggestion = params[:suggestion]
    characters = @suggestion.split('')
    @letters.each do |letter|
      characters.each do |character|
        if letter == character
          @letters.delete(letter)
        else

        end
      end
    end
  end
end
