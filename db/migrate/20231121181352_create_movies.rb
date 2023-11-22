class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string    :title, null: false, index: true
      t.integer   :year, null: false, index: true
      t.string    :genre, null: false
      t.decimal   :budget_in_cr, null: false
      t.decimal   :box_office_earnings_in_cr
      t.timestamps
    end

    execute('CREATE INDEX idx_title_year_on_movies ON movies(title, year DESC)')
  end
end
