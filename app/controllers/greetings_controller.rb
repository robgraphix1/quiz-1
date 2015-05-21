class GreetingsController < ApplicationController
	def index
		@greeting = Greeting.first
	end
end
