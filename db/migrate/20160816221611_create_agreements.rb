class CreateAgreements < ActiveRecord::Migration
  def change
    create_table :agreements do |t|
      t.string       :name
      t.string       :abbreviation
      t.integer      :code
      t.integer     :orderer_id
      t.time         :constraction_date
      t.time         :completion_date
      t.timestamps null: false
    end
  end
end
