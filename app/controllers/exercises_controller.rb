class ExercisesController < ApplicationController
  
  def index
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(exercise_params)
      respond_to do |format|
      if @exercise.save
        format.html { redirect_to @exercise, notice: 'exercise was successfully created.' }
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

  
end
