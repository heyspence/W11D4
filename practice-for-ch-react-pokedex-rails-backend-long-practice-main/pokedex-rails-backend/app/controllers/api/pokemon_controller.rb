class Api::PokemonController < ApplicationController
    def types
        types = Pokemon::TYPES
        render json: types
    end

    def index
    end

    def show
    end

    def create
    end

    def pokemon_params
        params.require(:pokemon).permit(:type)
    end
end
