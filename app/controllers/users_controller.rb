class UsersController < ApplicationController

  def show
     user = User.first
    if user
      render json: user.pokemons.to_json
    else
      render :nothing => true, status: 404
    end
  end

  def create
    user = User.first
    pokemon = user.pokemons.new()
    pokemon.id = params[:id]
    pokemon.name = params[:name]

    pokemon.save

    render json: pokemon.to_json
  end


  def destroy
    pokemon = pokemon.find_by(id: params[:id])
    pokemon.destroy
  end


end
