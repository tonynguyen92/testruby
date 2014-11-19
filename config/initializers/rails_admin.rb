RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    export
    bulk_delete
    show
    edit
    delete
    toggle
    new
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Category' do
    visible true
    # configure :sale_reports, :has_many_association
    list do
      field :name do
        column_width 200
      end
      field :auto, :toggle
      #field :sale
    end
    show do
    end
    edit do
      field :name do
        html_attributes rows: 20, cols: 50
      end
      field :auto, :toggle
    end
  end
  config.model 'User' do
    visible true
    # configure :sale_reports, :has_many_association
    list do
      field :email do
        column_width 200
      end
      field :created_at do
         column_width 150
        strftime_format "%d-%m-%Y %H:%M"
      end
      #field :sale
    end
    show do
    end
    edit do
      field :email do
        html_attributes rows: 20, cols: 50
      end
      field :created_at do
         column_width 150
        strftime_format "%d-%m-%Y %H:%M"
      end
    end
  end
   config.model 'Article' do
    visible true
    # configure :sale_reports, :has_many_association
    list do
      field :name do
        column_width 200
      end
      field :image do
        column_width 200
      end
      field :desc do
        column_width 200
      end
      field :content do
        column_width 200
      end
      field :category do
        column_width 200
      end
      #field :sale
    end
    show do
    end
    edit do
      field :name do
        column_width 200
      end
      field :image do
        column_width 200
      end
      field :desc do
        column_width 200
      end
      field :content do
        column_width 200
      end
      field :category do
        column_width 200
      end
    end
  end
end
