class ChangeRatingColoumRaterId < ActiveRecord::Migration
	def change
   		rename_index :ratings, 'rater_id', 'judge_id'
  	end
end