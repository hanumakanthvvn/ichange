class Activity < ActiveRecord::Base
	belongs_to :strength
	belongs_to :weakness

	scope :positives, -> { where('strength_id IS NOT NULL' )}
	scope :negatives, -> { where('weakness_id IS NOT NULL' )}


	def self.create_activity(user, activity, value)
		new_activity = user.activities.build(strength_id: activity.strength_id, 
	  	              weakness_id: activity.weakness_id, count: value)

		new_activity.save
	end
end
