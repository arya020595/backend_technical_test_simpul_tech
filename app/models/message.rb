class Message
  include Mongoid::Document
  include Mongoid::Timestamps
  field :body, type: String
  
  belongs_to :user
  belongs_to :conversation

  validates :body, :conversation_id, :user_id, :presence => true
  validate :user_exists

  def user_exists
    errors.add(:user_id, 'is not a valid user') unless User.exists?(id: user_id)
  end
end
