class HabitSerializer < ActiveModel::Serializer
  attributes :id, :habit_title, :streak
end
