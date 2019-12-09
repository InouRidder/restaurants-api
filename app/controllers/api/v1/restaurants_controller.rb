module Api
  module V1
    class RestaurantsController < Api::V1::BaseController
      def index
        @restaurants = policy_scope(Restaurant)
      end
    end
  end
end
