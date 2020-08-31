class Comment < ApplicationRecord
  # sets up an Active Record association 关联
  # Each comment belongs to one article.
  belongs_to :article
end
