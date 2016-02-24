class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :service_id
      t.string :email_address
      t.string :password

      t.timestamps
    end
  end
end
