class Feedback < ActiveRecord::Base
  def feedback_params
    params.require(:feedback).permit(:name, :contact, :message, :category)
  end
end
