class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      #カスタマーID
      t.integer :customers_id, null: false
      #名前
      t.string :name, null: false
      #郵便番号
      t.string :postal_code, null: false
      #住所
      t.string :address, null: false

      t.timestamps
    end
  end
end
