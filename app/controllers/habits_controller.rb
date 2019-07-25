# frozen_string_literal: true

class HabitsController < ProtectedController
  before_action :set_habit, only: %i[update destroy]
  # before_action :only_see_own_page, only: %i[index show]
  #
  # def only_see_own_page
  # @user = User.find(params[:id])
  #
  # if current_user != @user
  #   redirect_to root_path, notice: "Sorry, but you are only allowed to view your own profile page."
  # end
  # end

  # GET /habits
  def index
    # @habits = Habit.all
    @habits = current_user.habits.all
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
