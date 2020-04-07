module CopyrightViewTool
  extend ActiveSupport::Concern

  included do
    before_action :set_copyright
  end

  def set_copyright
    @copyright = CopyrightViewTool::Renderer.copyright 'Sam Moore'
  end

  class Renderer
    def self.copyright name
      "&copy; #{Time.now.year} | <b>#{name}</b>".html_safe
    end
  end
end
