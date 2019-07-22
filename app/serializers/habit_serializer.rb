class HabitSerializer < ActiveModel::Serializer
  attributes :id, :habit_title, :streak

  def editable
    scope == object.user
  end

end
