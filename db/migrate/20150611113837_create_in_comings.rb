class CreateInComings < ActiveRecord::Migration
  def change
    create_table :in_comings do |t|
      t.integer :house_id
      t.text :params
      t.integer :update_reason
      t.string :house_unit_id
      t.decimal :ambient_temp
      t.decimal :temp
      t.float :ct1_realPower
      t.float :ct2_realPower
      t.float :ct3_realPower
      t.float :ct4_realPower
      t.float :ct1_Vrms
      t.float :time_stamp

      t.timestamps null: false
    end
  end
end
