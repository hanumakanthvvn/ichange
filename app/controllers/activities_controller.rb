class ActivitiesController < ApplicationController

	def update_count
	  activity = Activity.find(params[:id])
	  #value = params[:value] == 's' ? 1 : 0
	  Activity.create_activity(current_user, activity, params[:value].to_i)
	  respond_to do |format|
	  	format.js
	  end
	end
end