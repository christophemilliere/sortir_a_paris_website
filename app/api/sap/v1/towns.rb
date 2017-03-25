module V1
  class Towns < Grape::API
    resource :towns do
      desc "Return list cities."
      get  do
        Town.all
      end
    end
  end
end