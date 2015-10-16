class Doc < ActiveRecord::Base
  validates :slug, uniqueness: true, presence: true
  validates :content, presence: true
end
