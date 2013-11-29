class AddSalesOrderToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :salesorder, :string
  end
end
