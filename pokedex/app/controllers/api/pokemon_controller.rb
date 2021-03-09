class Api::PokemonController < ApplicationController
    def index 
        @pokemon = Pokemon.all
        render :index
    end 

    def show 
        @pok = Pokemon.find(params[:id])
        @id = params[:id]
        if @pok
            render :show 
        else 
            render @pok.errors.full_messages
        end 
    end 

    private

    def pokemon_params
        params.require("pokemon").permit(:name, :attack, :defense, :poke_type, :image_url)
    end 
end 