class CreateVReasons < ActiveRecord::Migration
  def change
    create_table :v_reasons do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
