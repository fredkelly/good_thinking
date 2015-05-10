class Thought < ActiveRecord::Base
  belongs_to :author, :class_name => 'User'
  belongs_to :recipient, :class_name => 'User'

  before_create :set_recipient_to_author, :unless => :recipient

  scope :pending, -> { where(delivered: false) }

  private

  def set_recipient_to_author
    self.recipient = self.author
  end
end
