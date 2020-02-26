class ParagraphSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :description

  belongs_to :post
end
