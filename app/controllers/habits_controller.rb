# frozen_string_literal: true

class HabitsController < OpenReadController
  before_action :set_habit, only: %i[update destroy show]

  # GET /habits
  def index
    @habits = Habit.all

    render json: @habits
  end

  # GET /habits/1
  def show
    # render json: Habit.find(params[:id])
    render json: current_user.habits.find(params[:id])
  end

  # POST /habits
  def create
    @habit = current_user.habits.build(habit_params)

    if @habit.save
      render json: @habit, status: :created, location: @habit
    else
      render json: @habit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /habits/1
  def update
    if @habit.update(habit_params)
      render json: @habit
    else
      render json: @habit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /habits/1
  def destroy
    @habit.destroy

    head :no_content
  end

  def set_habit
    @habit = current_user.habits.find(params[:id])
  end

  def habit_params
    params.require(:habit).permit(:habit_title, :streak)
  end

  private :set_habit, :habit_params
end
