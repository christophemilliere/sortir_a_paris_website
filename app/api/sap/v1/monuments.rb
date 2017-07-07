module V1
  class Monuments < Grape::API
    resource :monuments do
      desc "Return list monuments."
      get  do
        I18n.locale = ["fr", "en", "ja"].include?(params[:locale]) ? params[:locale] : :en
        Monument.where.not(name: nil)
      end

      desc "Return monument."
      params do
        requires :id, type: Integer, desc: "Monument id"
      end
      get ':id'  do
        I18n.locale = ["fr", "en", "ja"].include?(params[:locale]) ? params[:locale] : :en
        error!('Not found', 404) unless Monument.find_by(id: params[:id])
        Monument.find_by(id: params[:id])
      end
    end
  end
end
