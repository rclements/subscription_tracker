class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :subscription_type
      t.integer :number_of_seats
      t.integer :number_of_employees_using_it
      t.string :client_project
      t.decimal :price, :precision => 8, :scale => 2
      t.string :billing_frequency
      t.datetime :sign_up_date
      t.datetime :free_trial_expiration_date
      t.string :day_of_month_charged
      t.datetime :expiration_date
      t.boolean :auto_renewal
      t.string :category_of_expense
      t.string :account_email_address
      
      t.timestamps
    end
  end
end
