module V1
  class Towns < Grape::API
    resource :towns do
      desc "Return list cities."
      get  do
        I18n.locale = params[:locale]
        Town.where.not(name: nil)
      end
    end
  end
end