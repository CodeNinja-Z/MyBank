class TasksController < ApplicationController

	before_action :authenticate_user!

	def create
		@task = Task.new(task_params)
	end 

	def index
		@tasks = Task.all
	end 

	def update
	end 

	def show 
		@task = Task.find(params[:id])
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
