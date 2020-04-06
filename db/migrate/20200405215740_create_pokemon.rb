class CreatePokemon < ActiveRecord::Migration
  def change
     create_table :pokemon do |t|
      t.string :name
      t.string :nickname
      t.string :gender
      t.integer :index_num
      t.integer :level
      t.integer :user_id
     end
  end
end
