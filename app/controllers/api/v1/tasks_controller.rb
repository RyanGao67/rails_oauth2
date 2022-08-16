module Api
  module V1
    class TasksController < BaseController
      before_action :doorkeeper_authorize!

      def index
        params.permit(:task)

        render json: current_user.tasks
      end

      def create
        params.permit(:task)

         current_user.tasks.create(name: params[:task]["name"])
      end
    end
  end
end