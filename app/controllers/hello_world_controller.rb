class HelloWorldController < ApplicationController

    def index
        @note = "Hello, Team!! Welcome team..!!"
    end

    def failure
        DDOG.emit_point("zendesk.spinnaker.hello_world.failure", 1) if ENV['DDOG_API_KEY']
        render plain: "Failure event sent to datadog"
    end
end
