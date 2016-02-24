class RemoveCategoryOfExpenseFromServices < ActiveRecord::Migration
  def change
    remove_column :services, :category_of_expense
  end
end
