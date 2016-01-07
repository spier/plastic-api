# loosely based on Twitter example from https://github.com/ruby-grape/grape
module Status
  class API < Grape::API
    # version 'v1', using: :header, vendor: 'twitter'
    # format :json
    # prefix :api

    resource :statuses do
      desc 'Return a status.'
      params do
        requires :id, type: Integer, desc: 'Status id.'
      end
      route_param :id do
        get do
          {
              id: params['id'],
              status: 'dummy'
          }
        end
      end

      desc 'Create a status.'
      params do
        requires :status, type: String, desc: 'Your status.'
      end
      post do
        {
            id: 1337,
            status: params['status']
        }
      end

      desc 'Update a status.'
      params do
        requires :id, type: String, desc: 'Status ID.'
        requires :status, type: String, desc: 'Your status.'
      end
      put ':id' do
        {
            id: params['id'],
            status: params['status']
        }
      end

      desc 'Delete a status.'
      params do
        requires :id, type: String, desc: 'Status ID.'
      end
      delete ':id' do

      end
    end
  end
end