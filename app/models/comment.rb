class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :js_framework

  validates :comment_text, presence: true
end
