class ApiController < ApplicationController
  def health_check
    render json: {
      ruby_version: "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}",
      platform: "#{RUBY_PLATFORM}",
      dict_version: "#{get_dict}",
      api_version: "#{ENV["API_VERSION"]}"
    }
  end

  def define
    text = `echo | dict #{params[:word]}`

    render json: {
      definition: text
    }
  end

  def get_dict
    `echo | dict --version`.split("\n")[0]
  end

  def permitted_params
    params.permit!(
      :word
    )
    end



end