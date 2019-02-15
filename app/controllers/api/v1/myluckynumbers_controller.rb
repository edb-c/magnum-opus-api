class Api::V1::MyluckynumbersController < ApplicationController

before_action  :set_myluckynumbers, only: [:show, :update, :destroy]

def index 

  @myluckynumbers = Myluckynumber.all 
    render json: @myluckynumbers, status: 200 
  
end    


def create 
  
    @myluckynumber = Myluckynumber.new(myluckynumber_params)
    if @myluckynumber.save 
      render json: @myluckynumber
    else 
      render json: { message: @myluckynumber.errors.full_messages }, status: 400
    end 
end

#def show
#    @myluckynumber = myluckynumber.find(params[:id])
#    render json: @myluckynumber, status: 200 
#end

#def update 
#    if @myluckynumber.update(myluckynumber_params)
#      render json: @myluckynumbers
#    else 
#      render json: { message: @myluckynumbers.errors }, status: 400
#    end
#end

def destroy
    if @myluckynumber.destroy
      render status: 204
    else 
      render json: { message: "Unable to remove this entry" }, status: 400
    end 
end

private 

    def set_myluckynumbers 
      @myluckynumber = Myluckynumber.find_by(id: params[:id])
    end

    def myluckynumber_params
      params.require(:myluckynumber).permit(:winning_numbers, :bonus) #, :draw_date) 
    end


end #end class