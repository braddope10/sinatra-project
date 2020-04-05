class CreateTypes < ActiveRecord::Migration
  def change
    create_table :type do |t|
      t.string :name
      t.integer :pokemon_id
    end
  end
end
