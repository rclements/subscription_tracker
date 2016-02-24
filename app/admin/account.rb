ActiveAdmin.register Account do
  menu priority: 4
  permit_params :employee_name, :service_id, :email_address, :password

  form do |f|
    f.inputs do
      f.input :service
      f.input :employee_name
      f.input :email_address
      f.input :password
    end
    f.actions
  end
end

