class AttemptsController < ApplicationController
  
  def index
    @attempts = Attempt.all
  end

  def new
    @attempt = Attempt.new
  end

  def create
    @attempt = Attempt.create(attempt_params)
      respond_to do |format|
      if @attempt.save
        format.html { redirect_to @attempt, notice: 'attempt was successfully created.' }
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


  def set_attempt
    @attempt = Attempt.find(params[:id])
  end

  def attempt_params
    params.require(:attempt).permit(:weight, :athlete_id, :lift_id)
  end

end