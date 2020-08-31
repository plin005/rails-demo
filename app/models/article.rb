class Article < ApplicationRecord
  # One article can have many comments.
  # can use arrary '@article.comments' to retrieve all the comments for one article.
  has_many: comments
  validates :title, presence: true, length: { minimum: 5 }
end
