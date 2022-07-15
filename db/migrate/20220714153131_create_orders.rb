class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      #会員ID
      t.integer :customer_id, null: false
      #宛名
      t.string :name, null: false
      #郵便番号
      t.string :postl_code, null: false
      #住所
      t.string :address, null: false
      #送料
      t.integer :postage, null: false
      #請求額
      t.integer :billing_amount, null: false
      #支払い方法
      t.integer :payment_method, null: false, default: 0
      #受注ステータス
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end

