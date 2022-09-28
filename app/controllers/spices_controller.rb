class SpicesController < ApplicationController

    # GET/spices
    def index
        spices = Spice.all
        render json: spices
    end

    # GET/spices/:id
    def show
        spice = Spice.find_by(id: params[:id])
        if spice
            render json: spice
        else
            render json: {error: "Spice not found"}, status: :not_found
        end
        
    end
end
