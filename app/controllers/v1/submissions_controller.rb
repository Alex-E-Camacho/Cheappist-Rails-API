class V1::SubmissionsController < ApplicationController

  def index
    @submissions = Submission.description_search(params[:item])

    render json: @submissions, status: :ok
  end

  # private
  #   def submissions_params
  #     params.require(:submission).permit(:description)
  #   end
end
