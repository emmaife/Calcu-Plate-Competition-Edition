class LogsController < ApplicationController
  
  def index
    @logs = current_user.logs
  end

  def new
    @log = Log.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
