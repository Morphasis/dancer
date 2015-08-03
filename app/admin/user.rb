ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  permit_params do
    permitted = [:username, :password, :password_confirmation]
    permitted
  end

  index do
    selectable_column
    column :email
    column :password
    column :name
    actions
  end

  form do |f|
      f.inputs "User" do
        f.input :email
        f.input :name
        f.input :password, :required => true
        f.input :password_confirmation, :required => true
      end
      f.actions
    end

end
