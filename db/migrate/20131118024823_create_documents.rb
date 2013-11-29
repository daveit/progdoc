class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :deldoc
      t.string :lotnum
      t.string :custord
      t.date :docdate
      t.text :salesorder
      t.string :docname
      t.references :product, index: true

      t.timestamps
    end
  end
end
