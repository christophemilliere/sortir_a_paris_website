module V1
  class Monuments < Grape::API
    resource :monuments do
      desc "Return list monuments."
      get  do
        Monument.all
      end
    end
  end
end
