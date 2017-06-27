class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.where(deadline: Date.today)
    @task = Task.new
  end

  def create
    @task = Task.new
  end

  private

  def task_params
    params.require(:task).permit(:title, :init, :deadline, :observation, :status, :importance, :user_id)
  end
end
