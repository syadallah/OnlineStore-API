class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :editable, :user_id

  def editable
    scope == object.user
  end
end
