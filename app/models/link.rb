class Link < ApplicationRecord
  after_create :generate_slug

  def generate_slug
    self.slug = self.id.hash.abs.to_s(36)[0,6]
    self.save
  end

  def out_url
    ENV['BASE_URL'] + self.slug
  end
end
