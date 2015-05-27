class User < ActiveRecord::Base
  has_many :thoughts, :foreign_key => 'author_id'

  def full_name
    [first_name, last_name].compact.join(' ')
  end
end
