class ApiController < ApplicationController
  def health_check
    render json: {
      ruby_version: "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}",
      message: "#{ENV["DOCKER_MESSAGE"]}",
      platform: "#{RUBY_PLATFORM}"
    }
  end

end