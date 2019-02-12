class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :description
      t.float :duration
      t.string :genre

      t.timestamps
    end
  end
end
