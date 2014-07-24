class LiftsController < ApplicationController
  
  def index
  end

  def new
    @lift = Lift.new
  end

  def create
    @lift = Lift.create(lift_params)
      respond_to do |format|
      if @lift.save
        format.html { redirect_to @lift, notice: 'lift was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private


  def set_lift
    @lift = Lift.find(params[:id])
  end

  def lift_params
    params.require(:lift).permit(:name)
  end

end

