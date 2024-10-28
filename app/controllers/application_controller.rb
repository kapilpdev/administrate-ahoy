class ApplicationController < ActionController::Base
  
  
  def track_action
    properties = request.path_parameters
    properties[:url] = request.url
    ahoy.track "Ran action", properties
  end
end
