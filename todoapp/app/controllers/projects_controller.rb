class ProjectsController < ApplicationController
  def index
    projects = Project.includes(:todos, :title)
  	@projects = Project.all
  	@todos = Todo.all
  end

  def show
    @projects = Project.find(params[:id])
	  @todos = Todo.find(params[:id])
  end

  def update
    print 'sfsdfwds'
  end

  def edit
    @todo = Todo.find(params[:id])
    if @todo.isCompleted == "t"
      @todo.isCompleted = true
    end

    if  @todo.update_attributes(todo_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def new
  end

  def create
	  @project_id = params.require(:todo).permit(:project).values[0]
    @project = Project.find(@project_id)
    @todo = @project.todos.new(todo_params)
    if @todo.save
      redirect_to root_path
    end
  end

  def todo_params
    params.require(:todo).permit(:text, :isCompleted, :project_id)
  end

end
