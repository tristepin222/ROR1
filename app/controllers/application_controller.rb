class ApplicationController < ActionController::Base

  def authorize_teacher
    unless current_person&.teacher?
      route_back
    end
  end

  def authorize_dean
    unless current_person&.dean?
      route_back
    end
  end

  def authorize_dean_or_teacher
    unless current_person&.dean? || current_person&.teacher?
      route_back
    end
  end

  def authorize_access
    authorize_dean_or_teacher
    if current_person&.dean?
      # Deans can access all actions
      return
    elsif current_person&.teacher? && params[:action] != "index"
      # Teachers can only access index action
      route_back
    end
  end

  def route_back
    flash[:alert] = "You are not authorized to access this page."
    redirect_back fallback_location: root_path
  end
end
