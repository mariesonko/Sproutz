class Event < ApplicationRecord
  has_many :playdates
  has_many :children, through: :playdates

  # def self.getEvents()
  #   api_url= "https://www.eventbrite.com/oauth/authorize?response_type=token&client_id=TW3CV65PDO7IVLB34T"
  #   response = RestClient.get(api_url)
  #   results_hash = JSON.parse(response)
  # end

end
