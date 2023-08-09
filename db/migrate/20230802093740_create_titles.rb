class CreateTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :titles do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.string :country
      t.date :published_at
      t.text :description

      t.timestamps
    end

    # Garantindo que o titulo seja unico (unique: true)
    add_index :titles, :title, unique: true
  end
end
