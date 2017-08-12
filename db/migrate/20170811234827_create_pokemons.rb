class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :poke_id

      t.timestamps
    end
  end
end
