class CreatePokemon < ActiveRecord::Migration
  def change
     create_table :pokemon do |t|
      t.string :name
      t.string :nickname
      t.integer :level
      t.string :gender
      t.integer :user_id
     end
  end
end
