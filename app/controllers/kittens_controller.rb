class KittensController < ApplicationController
    def index
        @kittens = Kitten.all
    end

    def create
        @kitten = kittens.build(kitten_params)

        if @kitten.save
            redirect_to root_path
        else 
            render :new
        end
    end

    def show
        
    end

    def new
        @kitten = Kitten.new
    end

    def edit

    end

    def update

    end

    def destroy 

    end

    private

    def kitten_params
        params.require(:post).permit(:name, :age, :cuteness, :softness)
    end
end
