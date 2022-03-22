module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title =  "Sam's Portfolio Site"
    @seo_keywords = "Sam Moore portfolio"
  end
end
