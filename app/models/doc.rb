class Doc < ActiveRecord::Base
  validates :slug, uniqueness: true
end
