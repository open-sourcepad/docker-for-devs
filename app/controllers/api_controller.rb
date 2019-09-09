class ApiController < ApplicationController
  def health_check
    render json: {
      ruby_version: "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}",
      platform: "#{RUBY_PLATFORM}",
      dict_version: "#{get_dict}"
    }
  end

  def get_dict
    `echo | dict --version`.split("\n")[0]
  end

end