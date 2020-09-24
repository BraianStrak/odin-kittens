class KittensController < ApplicationController
    def index
        @kittens = Kitten.all
    end

    def create
        @kitten = Kitten.new(kitten_params)

        if @kitten.save
            redirect_to root_path
        else 
            render :new
        end
    end

    def show
        @kitten = Kitten.find(params[:id])
    end

    def new
        @kitten = Kitten.new
    end

    def edit

    end

    def update
        @kitten.update(kitten_params)
    end

    def destroy 
        @kitten = Kitten.find(params[:id])
        @kitten.destroy
    end

    private

    def kitten_params
        params.require(:kitten).permit(:id, :name, :age, :cuteness, :softness)
    end
end
