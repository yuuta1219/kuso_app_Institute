class Aidoji::TasksController < Aidoji::BaseController
  before_action :aidoji, only: [:index, :create, :update, :destroy]

  def index
    if logged_in?
      @tasks = current_user.tasks.order(created_at: :asc)
      @task = Task.new
    end
  end


  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to aidoji_tasks_path(@task), success: "nice task create"
    else
      render turbo_stream: turbo_stream.replace('error_messages', partial: 'shared/error_messages', locals: { object: @task })
    end
  end

  def update
    @task = current_user.tasks.find(params[:id])
    if @task.update(task_params)
      redirect_to aidoji_tasks_path(@task), success: "nice task update"
    else
      render turbo_stream: turbo_stream.replace('error_messages', partial: 'shared/error_messages', locals: { object: @task })
    end
  end

  def destroy
    @task = current_user.tasks.find(params[:id])
    @task.destroy!
    redirect_to aidoji_tasks_path(@task), success: "nice task destroy"
  end

  private

  def task_params
    params.require(:task).permit(:title, :body)
  end

  def aidoji
  end
end
