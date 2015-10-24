# GET /staticpages
class StaticPagesController < ApplicationController
	def index
	end

	def dashboard
		# Used to view all data
		@newsposts = Newspost.all
		@locations = Location.all
		@feedbacks = Feedback.all
	end

	def show
	end

	def edit
	end
end
