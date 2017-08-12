class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.references :user, foreign_key: true
      t.integer :poke_id, null: false

      t.timestamps
    end
  end
end
