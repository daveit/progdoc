class RemovesalesorderColumnTodocuments < ActiveRecord::Migration
  def change
      remove_column :documents, :salesorder
  end
end
