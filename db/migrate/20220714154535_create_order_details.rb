class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      #ちゅうもんID
      t.integer :order_id, null: false
      #商品ID
      t.integer :item_id, null: false
      #購入時価格
      t.integer :purchase_price, null: false
      #数量
      t.integer :quantity, null: false
      #製作ステータス
      t.integer :production_status, null: false, default: 0

      t.timestamps
    end
  end
end
