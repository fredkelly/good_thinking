class User < ActiveRecord::Base
  has_many :thoughts, :foreign_key => 'author_id'
end
