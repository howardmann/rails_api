class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :box_office
  belongs_to :director
end
