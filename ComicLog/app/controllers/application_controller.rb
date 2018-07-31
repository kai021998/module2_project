class ApplicationController < ActionController::Base

  def get_characters
  @client = Marvel::Client.new

  @client.configure do |config|
    config.api_key = ENV["MY_KEY"]
    config.private_key = ENV["MY_SECOND_KEY"]
  end
end

end
