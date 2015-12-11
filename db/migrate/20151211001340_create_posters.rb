class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.string :username
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
