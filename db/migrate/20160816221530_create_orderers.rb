class CreateOrderers < ActiveRecord::Migration
  def change
    create_table :orderers do |t|
      t.string :name
      t.string       :yomi
      t.timestamps null: false
    end
  end
end
