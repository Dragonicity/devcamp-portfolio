class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include CurrentUserConcern
  include DeviseWhitelist
  include SetSource
  include SetPageDefaults

  before_action :set_copyright

  def set_copyright
    @copyright = XViewTool::Renderer.copyright 'MarkX', 'All rights reserved'
  end
end

module XxxViewTool
  class Renderer
    def self.copyright name, msg
      "&copy #{Time.now.year} | #{name} #{msg}".html_safe
    end
  end
end