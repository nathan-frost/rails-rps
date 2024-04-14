class ZebraController < ApplicationController
  def home
    render({ :template=> "game_templates/home"})
  end
  def rock
    moves = ["rock","paper","scissors"]

    @cpu_move = moves.sample
  
    if @cpu_move == "rock"
      @outcome = "tied"
    elsif @cpu_move == "paper"
      @outcome = "lost"
    elsif @cpu_move == "scissors"
      @outcome = "won"
    end

    render({ :template=> "game_templates/play_rock"})
  end

  def paper
    moves = ["rock","paper","scissors"]

    @cpu_move = moves.sample
  
    if @cpu_move == "rock"
      @outcome = "won"
    elsif @cpu_move == "paper"
      @outcome = "tie"
    elsif @cpu_move == "scissors"
      @outcome = "lost"
    end

    render({ :template=> "game_templates/play_paper"})
  end

  def scissors
    moves = ["rock","paper","scissors"]

    @cpu_move = moves.sample
  
    if @cpu_move == "rock"
      @outcome = "lost"
    elsif @cpu_move == "paper"
      @outcome = "won"
    elsif @cpu_move == "scissors"
      @outcome = "tie"
    end

    render({ :template=> "game_templates/play_scissors"})
  end
end
