class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  prepend_view_path Rails.root.join("frontend")

  before_action :init_category

  def init_category
    @categories = Category.where(state: true).order(id: :asc)
  end
end
