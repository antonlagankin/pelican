class BlogArticle < ActiveRecord::Base
  belongs_to :blogEntry
  belongs_to :feedback
  has_one :blog, :through => :blogEntry
  has_one :coach, :through => :blog
end
