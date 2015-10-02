class Post < ActiveRecord::Base
  serialize :body, JSON
end
