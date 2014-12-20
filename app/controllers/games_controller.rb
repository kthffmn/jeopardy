class GamesController < ApplicationController

  def show
    @game = Game.find(params[:id])
    @data = @game.jeopardy 
  end

  def new
    @game = Game.new(:show_id => Show.all.sample.id)
    if @game.save
      UserGame.create(:user_id => current_user.id, :game_id => @game.id)
      redirect_to game_path(@game)
    else
      redirect_to "/", error: "An error occurred. We apologize for the inconvienince."
    end
  end

end