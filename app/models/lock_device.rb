class LockDevice
  attr_reader :connection

  def initialize
    @connection = Faraday.new(:url => 'https://api.particle.io') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
  end

  def unlock_door
    res = @connection.post '/v1/devices/53ff6c065067544842301287/led', {
      arg: "on",
      access_token: "87347ce00c4303c39e3567274f934b0c62c694c8"
    }

    Rails.logger.info "API: #{res.body.inspect}"
  end
end
