class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user.pokemons.to_json
    else
      render :nothing => true, status: 404
    end
  end

  def create
    user = User.find_by(id: params[:user_id])
    pokemon = user.pokemons.find_by(poke_id: params[:id])
    if pokemon.nil?
      pokemon = user.pokemons.new()
      pokemon.poke_id = params[:id]
      pokemon.save
    end
    render json: pokemon.to_json
  end

  def destroy
    pokemon = pokemon.find_by(poke_id: params[:id], user: User.find_by(id: params[:user_id]))
    pokemon.destroy
  end

end
