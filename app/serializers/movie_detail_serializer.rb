class MovieDetailSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :year, :budget_in_cr, :box_office_earnings_in_cr
end
