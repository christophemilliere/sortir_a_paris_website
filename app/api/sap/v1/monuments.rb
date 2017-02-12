module V1
  class Monuments < Grape::API
    resource :monuments do
      desc "Return list monuments."
      get  do
        Monument.all
      end

      desc " Return one monument"
      params do
        requires :monument_id
      end
      get '/:monument_id' do
        monument = Monument.find_by_id(params[:monument_id])
        if monument
          monument
        else
           error!("Aucun monument trouvé" , 404)
        end
      end
    end
  end
end
