class ExercicesController < ApplicationController
	def create
		@workout = Workout.find(params[:workout_id])
		@exercice = @workout.exercices.create(params[:exercice].permit(:name, :sets, :reps))

		redirect_to workout_path(@workout)
	end
end