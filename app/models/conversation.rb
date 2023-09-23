class Conversation
  include Mongoid::Document
  include Mongoid::Timestamps
  field :recipient_id, type: Integer
  field :sender_id, type: Integer
end
