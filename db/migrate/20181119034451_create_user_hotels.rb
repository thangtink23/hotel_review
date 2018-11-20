class CreateUserHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :user_hotels do |t|
      t.references :user, foreign_key: true
      t.references :motel, foreign_key: true

      t.timestamps
    end
  end
end
