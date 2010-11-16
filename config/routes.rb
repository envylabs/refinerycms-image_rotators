Refinery::Application.routes.draw do
  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :image_rotators do
      resources :image_rotator_images, :only => %w(new create) do
        collection do
          post :update_positions
        end
      end
    end
  end
end
