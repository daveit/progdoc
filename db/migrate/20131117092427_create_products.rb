class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :part

      t.timestamps
    end
  end
end
