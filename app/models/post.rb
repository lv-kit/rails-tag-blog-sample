class Post < ApplicationRecord

  acts_as_taggable  # Tag

  # Validation
  validates :title, presence: true
  validates :slug, presence: true
  validates :body, presence: true
  validates :category_id, presence: true
  validates :tag_list, presence: true

  belongs_to :category
end
