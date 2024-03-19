class ApplicationController < ActionController::Base
  def authorize_teacher
    unless current_person&.teacher?
      flash[:alert ] = "You are not authorized to access this page."
      redirect_back fallback_location: root_path
    end
  end

  def authorize_dean
    unless current_person&.dean?
      flash[:alert ] = "You are not authorized to access this page."
      redirect_back fallback_location: root_path
    end
  end
  def authorize_dean_or_teacher
    unless current_person&.is_a?(Dean) || current_person&.is_a?(Teacher)
      flash[:alert] = "You are not authorized to access this page."
      redirect_to root_path
    end
  end
end
