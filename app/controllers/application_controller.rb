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
    unless current_person&.dean? || current_person&.teacher?
      flash[:alert] = "You are not authorized to access this page."
      redirect_back fallback_location: root_path
    end
  end

  def authorize_access
    if current_person&.dean?
      # Deans can access all actions
      return
    elsif current_person&.teacher? && params[:action] != "index"
      # Teachers can only access index action
      flash[:alert] = "You are not authorized to access this page."
      redirect_back fallback_location: root_path
    end
  end
end
