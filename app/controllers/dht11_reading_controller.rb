class Dht11ReadingController < JSONAPI::ResourceController
  def show
    render json: Dht11Reading.last().to_json
  end
end
