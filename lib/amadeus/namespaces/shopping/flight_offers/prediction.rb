# frozen_string_literal: true

module Amadeus
  module Namespaces
    class Shopping
      class FlightOffers
        # A namespaced client for the
        # +/v1/shopping/flight-offers/prediction+ endpoints
        #
        # Access via the +Amadeus::Client+ object
        #
        #   amadeus = Amadeus::Client.new
        #   amadeus.shopping.flight-offers.prediction
        #
        class Prediction < Amadeus::Client::Decorator
          # Returns a list of flight offers including a choice prediction for each itineary.
          #
          # @option body [JSON] :body JSON response of the Flight Low-fare Search API
          # @return [Amadeus::Response] a parsed response
          # @raise [Amadeus::Base] an exception if the call
          #   failed
          # @example TODO:
          #   amadeus.shopping.flight-offers.prediction.post(body: flight_offers_response)
          #
          def post(params = {})
            # client.post('/v1/shopping/flight_offers/prediction', params)
            client.host = 'prod-bizox.1a-lab.net'
            client.post('/v1/predict', params)
          end
        end
      end
    end
  end
end