class ThoughtSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :body, :delivered

  has_one :author
end
