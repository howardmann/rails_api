class DirectorSerializer < ActiveModel::Serializer
  attributes :id, :name, :age
  has_many :movies
end
