class HelloWorldController < ApplicationController

	def index
		@note = "Hello!! This is normal deployment"
		@version ||= "test"
		DDOG.emit_point("zendesk.spinnaker.hello_world.#{@version}", 1) if ENV['DDOG_API_KEY']
	end
end
