class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.string :anm_type, null: false
      t.string :gender, null: false
      t.text :catch_copy, null: false
      t.references :user, null: false, foreign_key: true
      t.string :image, null: false

      t.timestamps
    end
  end
end


# | name               | string       | null: false |
# | type               | string       | null: false |
# | catch_copy         | text         | null: false |
# | user               | reference    | null: false |
# | gender             | string       | null: false |