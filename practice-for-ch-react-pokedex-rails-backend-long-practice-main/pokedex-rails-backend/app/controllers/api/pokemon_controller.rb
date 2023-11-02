class Api::PokemonController < ApplicationController
    def types
        types = Pokemon::TYPES
        render json: types
    end

    def index
        @pokemons = Pokemon.all 
        render :index
    end

    def show
        @pokemon = Pokemon.find(params[:id])
        render :show
    end

    def create
        @pokemon = Pokemon.new(pokemon_params)
        if @pokemon.save 
            render :show 
        else 
            render json: @pokemon.errors.full_messages
        end 
    end

    def pokemon_params
        params.require(:pokemon).permit(:number, :name, :attack, :defense, :poke_type, :image_url, :captured )
    end
end
