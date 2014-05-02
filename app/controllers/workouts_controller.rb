class WorkoutsController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  
  def index
    @user= current_user
    @workouts = @user.workouts.group_by {|w| w.woDate.strftime("%m/%d/%Y")}
  end

  def new
    @user = current_user
    @workout = Workout.new
    @exercises = Exercise.all
  end

  def create
    @user = current_user
    @workout = Workout.create(workout_params)
    @workout.user_id = @user.id
    @workout.save
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
    params.require(:workout).permit(:user_id, :weight, :exercise_id, :woDate, :reps)
  end

end

