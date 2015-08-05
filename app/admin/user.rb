ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  permit_params do
    permitted = [:username, :password, :password_confirmation, :name, :admin]
    permitted
  end

  index do
    selectable_column
    column :email
    column :name
    column :admin
    actions
  end

  form do |f|
      f.inputs "User" do
        f.input :email
        f.input :name
        f.input :admin
        f.input :password
        f.input :password_confirmation
      end
      f.actions
    end
 
end
