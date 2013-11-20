class Tag < ActsAsTaggableOn::Tag
  before_save :normalize

  def normalize
    self.name = name.downcase.gsub(/[^[:alnum:]]+/, '-').gsub(/\A-|-\z/, '')
  end
end