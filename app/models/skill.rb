class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  #||= only sets the item if it's not already set
  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
