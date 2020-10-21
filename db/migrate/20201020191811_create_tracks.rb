class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :minutes
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
