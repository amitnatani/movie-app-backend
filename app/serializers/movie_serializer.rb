class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :year, :is_favourite

  def is_favourite
    object.user_id ? true : false
  end
end
