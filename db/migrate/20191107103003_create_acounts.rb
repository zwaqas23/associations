class CreateAcounts < ActiveRecord::Migration[5.2]
  def change
    create_table :acounts do |t|
      t.integer :acount_number
      t.references :suplier, foreign_key: true

      t.timestamps
    end
  end
end
