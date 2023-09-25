class MessagesController < ApplicationController
  def index
  end

  def show
    messages = Message.where(conversation_id: params[:conversation_id])

    render json: messages, status: :ok
  end

  def create
    conversation = Conversation.find(params[:conversation_id])
    message = conversation.messages.create(message_params)

    if message.persisted?
      render json: message, status: :created
    else
      render json: { errors: message.errors.full_messages }, status: :unprocessable_entity
    end    
  end

  def update
  end

  def destroy
  end

  private

  def message_params
    params.require(:message).permit(:conversation_id, :user_id, :body)
  end
end
