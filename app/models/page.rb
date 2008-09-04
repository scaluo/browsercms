class Page < ActiveRecord::Base
  
  version_fu
  
  #See config/initializers/concerned_with.rb
  concerned_with :status
  
  belongs_to :section
  belongs_to :template, :class_name => "PageTemplate"
  has_many :connectors, :order => "position"
  
  before_validation :append_leading_slash_to_path
  
  validates_presence_of :section_id
  validates_uniqueness_of :path
  
  def append_leading_slash_to_path
    if path.blank?
      self.path = "/"
    elsif path[0,1] != "/"
      self.path = "/#{path}"
    end
  end
  
  def move_to(section)
    self.section = section
    save
  end
  
  def layout
    template ? template.file_name : nil
  end

  def template_name
    template ? template.name : nil
  end
  
end