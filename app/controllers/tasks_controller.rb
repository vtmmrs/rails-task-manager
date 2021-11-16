class TasksController < ApplicationController
  before_action :set_task, only: [:show, :create, :edit]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.edit(task_params)
    redirect_to tasks_path
  end

  private

  def set_task

  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
