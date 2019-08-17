# frozen_string_literal: true

class GoalsController < ProtectedController
  before_action :set_goal, only: %i[update destroy]

  # GET /goals
  def index
    # @goals = Goal.all
    @goals = current_user.goals.all
    render json: @goals
  end

  # GET /goals/1
  def show
    # render json: @goal
    render json: current_user.goals.find(params[:id])
  end

  # POST /goals
  def create
    # @goal = Goal.new(goal_params)
    @goal = current_user.goals.build(goal_params)

    if @goal.save
      render json: @goal, status: :created, location: @goal
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /goals/1
  def update
    if @goal.update(goal_params)
      render json: @goal
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /goals/1
  def destroy
    @goal.destroy

    head :no_content
  end

  def set_goal
    @goal = current_user.goals.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:description, :due_date, :complete)
  end

  private :set_goal, :goal_params
end
