class Post < ActiveRecord::Base
  before_save :create_url_title
  scope :published, -> { where(published: true) }
  private
    def create_url_title
      self.url_title = self.title.parameterize
    end
end
