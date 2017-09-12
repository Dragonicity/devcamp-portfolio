 module SetPageDefaults
  extend ActiveSupport::Concern

  included do
    before_action :set_defaults
  end

  def set_defaults
    @page_title   = "DCP | Home"
    @seo_keywords = "Development Ruby Rails"
  end
end