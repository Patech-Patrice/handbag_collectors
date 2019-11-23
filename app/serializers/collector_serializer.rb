class CollectorSerializer < ActiveModel::Serializer
  has_many :handbags
  attributes :id, :name, :designer, :body
end
