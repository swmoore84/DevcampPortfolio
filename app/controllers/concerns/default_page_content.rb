module DefaultPageContent
  extend ActiveSupport::Concern

  before_action :set_page_defaults

  def set_page_defaults
    @page_title = "DevcampPortfolio | My Portfolio Website"
    @seo_keywords = "Sam Moore portfolio"
  end

end
