class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image_url
      t.string :trailer_url
      t.string :movie_url
      t.integer :status
      t.datetime :release_date
      t.datetime :watched_date

      t.timestamps
    end
  end
end
