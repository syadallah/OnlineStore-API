class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :editable

  def editable
    scope == object.user
  end
end
