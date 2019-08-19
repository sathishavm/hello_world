class HelloWorldController < ApplicationController

    def index
        @note = "Hello, Team!! This is demo for deployment strategies!!"
    end

    def failure
        DDOG.emit_point("zendesk.spinnaker.hello_world.failure", 1) if ENV['DDOG_API_KEY']
        render plain: "Failure event sent to datadog"
    end
end
