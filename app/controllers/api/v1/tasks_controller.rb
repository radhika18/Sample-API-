class Api::V1::TasksController < ActionController::Base
          #before_action :set_task, only: [:show, :update, :destroy]

          swagger_controller :tasks, "Tasks"

          swagger_api :show do
            summary "Fetches all properties"
            param :path, :id, :integer, :required, "Task Id"
            response :unauthorized
            response :not_acceptable
          end
          
          def show
            render :json => {result:"Success"}, :status => 200
          end

          swagger_api :index do
            summary "Fetches all User items"
            notes "This lists all the active users"
            param :query, :page, :integer, :optional, "Page number"
            response :unauthorized
            response :not_acceptable
            response :requested_range_not_satisfiable
          end

          def index
            render :json => {result:"Success"}, :status => 200
          end

  # GET /tasks
  # GET /tasks.json
  # def index
  #   @tasks = Task.all

  #   render json: @tasks
  # end

  # GET /tasks/1
  # GET /tasks/1.json
  
  # def show
  #   render json: @task
  # end

  # POST /tasks
  # POST /tasks.json
  # def create
  #   @task = Task.new(task_params)

  #   if @task.save
  #     render json: @task, status: :created, location: @task
  #   else
  #     render json: @task.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  # def update
  #   @task = Task.find(params[:id])

  #   if @task.update(task_params)
  #     head :no_content
  #   else
  #     render json: @task.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  # def destroy
  #   @task.destroy

  #   head :no_content
  # end

  # private

  #   def set_task
  #     @task = Task.find(params[:id])
  #   end

  #   def task_params
  #     params.require(:task).permit(:title, :completed, :order)
  #   end
          end