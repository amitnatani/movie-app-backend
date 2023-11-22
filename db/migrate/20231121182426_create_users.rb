class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string      :email, null: false, limit: 100
      t.string      :first_name, null: false, limit: 50
      t.string      :last_name, limit: 50
      t.string      :phone_number, limit: 10
      t.timestamps
    end
  end
end
