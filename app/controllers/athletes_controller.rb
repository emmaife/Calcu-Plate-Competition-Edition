class AthletesController < ApplicationController
  
  def index
  end

  def new
    @athlete = Athlete.new
  end

  def create
    @athlete = Athlete.create(athlete_params)
      respond_to do |format|
      if @athlete.save
        format.html { redirect_to @athlete, notice: 'athlete was successfully created.' }
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


  def set_athlete
    @lift = Lift.find(params[:id])
  end

  def athlete_params
    params.require(:athlete).permit(:name, :bwt, :gender, :total, :wilks, :weight_class_id, :competition_class_id, :age_division_id, :equipment_division_id)
  end


end
