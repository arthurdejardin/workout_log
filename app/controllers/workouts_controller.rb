class WorkoutsController < ApplicationController

	before_action :find_workout, only: [:show, :edit, :edit, :destroy]

	def index
	end

	def show
	end

	def new
		@workout = Workout.new
	end

	def create
		@workout = Workout.new(workout_params)
		if @workout.save
			redirect_to @workout
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end
	
	private

	def find_workout
		@workout = Workout.find(params[:id])
	end

	def workout_params
		params.require(:workout).permit(:date, :mood, :length, :workout)
	end

end
