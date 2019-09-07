class ApiController < ApplicationController
  def health_check
    render json: {
      ruby_version: "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}",
      message: "#{Gem.loaded_specs["a"].version}",
      platform: "#{RUBY_PLATFORM}"
    }
  end

end