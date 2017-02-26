class FireController < ApplicationController
  def index
    require 'fcm'

    fcm = FCM.new("AIzaSyBzy7OT-e4qk8sJ5TnMw4kvhPpKjh7i-S4")
    # you can set option parameters in here
    #  - all options are pass to HTTParty method arguments
    #  - ref: https://github.com/jnunemaker/httparty/blob/master/lib/httparty.rb#L29-L60
    #  fcm = FCM.new("my_api_key", timeout: 3)

    # registration_ids= ["12", "13"] # an array of one or more client registration tokens
    options = {data: {score: "123"}, collapse_key: "updated_score"}
    response = fcm.send_with_notification_key("/topics/testMessage", data: options)
    # response = fcm.send(registration_ids,options)
    render json: response , status: 200
  end
end
