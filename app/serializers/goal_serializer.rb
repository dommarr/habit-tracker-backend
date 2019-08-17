class GoalSerializer < ActiveModel::Serializer
  attributes :id, :description, :due_date, :complete

  def editable
    scope == object.user
  end

end
