# app/controllers/application_controler.rb
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  prepend_view_path Rails.root.join("frontend")

  before_action :init_category
  before_action :init_timezone

  def init_category
    p request.remote_ip
    @categories = Category.where(state: true).where(parent: nil).order(id: :asc)
  end

  # 
  # セッションにtimezoneが設定されていない場合、GeoIPを利用してアクセス元のIPアドレスからtimezoneを設定する
  # 
  def init_timezone
    if session[:timezone].blank?
      c = GeoIP.new('data/geoip/GeoLiteCity.dat').city(request.remote_ip)
      Time.zone = c.timezone unless c.nil?

      session[:timezone] = Time.zone.name
    end
  end
end
