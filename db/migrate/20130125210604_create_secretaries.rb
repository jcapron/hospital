class CreateSecretaries < ActiveRecord::Migration
  def change
    create_table :secretaries do |t|
      t.string :name
      t.string :phone
      t.integer :doctor_id

      t.timestamps
    end
  end
end
