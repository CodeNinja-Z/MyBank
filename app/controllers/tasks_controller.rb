class TasksController < ApplicationController

	def create
		@task = Task.new(task_params)
	end 

	def index
	end 

	def update
	end 

	def show 
	end 


	def destroy
		@task = Task.find(params[:id])
		@task.destroy
	end 

	private 
	def task_params
		params.require(:task).permit(:name, :description, :deadline, :amount)
	end 


end
