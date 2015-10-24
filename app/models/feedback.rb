class Feedback < ActiveRecord::Base
  def feedback_params
    params.require(:feedback).permit(:name, :email, :content)
  end
end
