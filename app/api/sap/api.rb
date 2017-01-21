module Api
  module Sap
    class Api < Grape::API
      # Mount our V1
      mount V1::Base
    end
  end
end
