RailsAdmin.config do |config|
  config.authorize_with do |controller|
    redirect_to main_app.root_path unless current_user.try(:admin?)
  end
end