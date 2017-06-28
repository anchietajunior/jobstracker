class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.where(deadline: Date.today).order(:importance)
    @task = Task.new
  end

  def create
    
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    respond_to do |format|
      if @task.save
        format.js
      else
        format.js
      end
    end

  end

  private

  def task_params
    params.require(:task).permit(:title, :init, :deadline, :observation, :status, :importance, :user_id)
  end
end
