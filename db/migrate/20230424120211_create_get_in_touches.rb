class CreateGetInTouches < ActiveRecord::Migration[7.0]
  def change
    create_table :get_in_touches do |t|
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
