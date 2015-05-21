class GreetingsController < ApplicationController
	def index
		@greeting = Greeting.last
	end

	def new
		@greeting = Greeting.new
	end

	def create
		Greeting.create(greeting_params)
		redirect_to root_path
	end

	private

	def greeting_params
		params.require(:greeting).permit(:salutation, :country)
	end
end
