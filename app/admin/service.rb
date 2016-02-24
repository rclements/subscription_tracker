ActiveAdmin.register Service do
  menu priority: 3
  permit_params :name,:subscription_type,:number_of_seats,:number_of_employees_using_it,:client_project,:price,:billing_frequency,:sign_up_date,:free_trial_expiration_date,:day_of_month_charged,:expiration_date,:auto_renewal,:category_of_expense,:account_email_address, :category_id

  form do |f|
    f.inputs do
      f.input :category
      f.input :name
      f.input :subscription_type
      f.input :number_of_seats
      f.input :number_of_employees_using_it
      f.input :client_project
      f.input :price
      f.input :billing_frequency
      f.input :sign_up_date, as: :date_time_picker
      f.input :free_trial_expiration_date, as: :date_time_picker
      f.input :day_of_month_charged
      f.input :expiration_date, as: :date_time_picker
      f.input :auto_renewal
      f.input :account_email_address
    end
    f.actions
  end

end
