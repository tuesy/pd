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

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    history_index
    history_show
  end

  config.model 'Exam' do
    list do

    end

    edit do
      field :livedata do
        partial 'livedata'
      end
      field :test do
        partial 'test'
      end
      field :patient do
        label "Patient Name"
      end
      field :type do
        label "Exam Type"
      end
      field :notes
      field :recorder do
        partial 'recorder'
        label "Session Recorder"
      end
      field :recording do
        label "Recording File"
      end
    end
  end

  # hide user accounts from dashboard
  config.excluded_models << User

end
