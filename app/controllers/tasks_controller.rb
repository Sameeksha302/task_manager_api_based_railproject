class TasksController < ApplicationController
  before_action :set_task, only: %i[ show update destroy ]


  def index
    @tasks = Task.all
    render json: @tasks,status: 200
  end


  def show
    if @task
      render json: @task,status: 200
    else
      render json: {error: "Not found"}
    end
  end


  def create
    @task = Task.new(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors
    end
  end

  def update
    if @task.update(task_params)
      render json: {task:@task,message: "Task has been updated!" }, status: :ok
    else
      render json: {error: "task does not updated properly!!"}
    end
  end
 
  def destroy
    @task.destroy!
    render json: {message: "Task has been deleted!!"}
  end

  private
 
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :description, :due_date, :priority, :status)
    end


end
