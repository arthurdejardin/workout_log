class Workout < ActiveRecord::Base
	has_many :exercices, dependent: :destroy
end
