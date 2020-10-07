RailsAdmin.config do |config|
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  # Hide model
  config.excluded_models = [MenuDish, Image]

  # == CancanCan ==
  config.authorize_with :cancancan
  config.authorize_with do
    unless current_user.try(:admin?)
      flash[:error] = 'You are not authorize to access this page!'
      redirect_to main_app.root_path
    end
  end
  # config action
  config.actions do
    dashboard # mandatory
    index # mandatory
    new do
      except %w[Review User Comment] # admin không được tạo mới review và order
    end
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    # config model Dish "hiển thị cần thiết"

    config.model 'ActiveStorage::Attachment' do
      visible false
    end
    config.model 'ActiveStorage::Blob' do
      visible false
    end

    config.model 'Dish' do
      edit do
        field :name
        field :money
        field :category
        field :image_dish
      end

      create do
        field :name
        field :money
        field :category
        field :image_dish
      end

        field :name
        field :money
        field :category
        field :image_dish
      
    end

    config.model 'Order' do
      configure :people do
        hide
      end
      configure :Orderdetail do
        hide
      end

    end
  end
end
