class WebLoginController < ApplicationController
	skip_before_filter :authenticate, :only => [:display]

	def display
	end
end
