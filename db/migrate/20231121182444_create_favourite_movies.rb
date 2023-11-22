class CreateFavouriteMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :favourite_movies do |t|
      t.references :user, foreign_key: true, index: false
      t.references :movie, foreign_key: true
      t.timestamps
    end

    add_index :favourite_movies, %i[user_id movie_id], unique: true
  end
end
