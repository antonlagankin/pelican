class Blog < ActiveRecord::Base
  belongs_to :coach
  has_many :blog_entries
end
