class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.string :name
      t.integer :orderer_id

      t.timestamps null: false
    end
  end
end
