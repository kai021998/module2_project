class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.string :title
      t.references :publisher, foreign_key: true
      t.timestamps
    end
  end
end
