class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :video, :image

end
