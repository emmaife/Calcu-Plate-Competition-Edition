class WorkoutsController < ApplicationController
  
  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
    @exercises = Exercise.all
  end

  def create
    @workout = Workout.create(workout_params)
      respond_to do |format|
      if @workout.save
        format.html { redirect_to workouts_path, notice: 'workout was successfully created.' }
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

  def set_workout
    @workout = Workout.find(params[:id])
  end

  def workout_params
    params.require(:workout).permit(:user_id, :weight, :exercise_id, :WODate, :reps)
  end

end

