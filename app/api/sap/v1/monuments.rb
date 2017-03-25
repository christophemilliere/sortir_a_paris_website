module V1
  class Monuments < Grape::API
    resource :monuments do
      desc "Return list monuments."
      get  do
        Monument.all
      end

      desc "Return monument."
      params do
        requires :id, type: Integer, desc: "Monument id"
      end
      get ':id'  do
        error!('Not found', 404) unless Monument.find_by(id: params[:id])
        Monument.find_by(id: params[:id])
      end
    end
  end
end
