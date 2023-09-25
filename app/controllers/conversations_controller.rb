class ConversationsController < ApplicationController

  # before_action :authorize_request, except: :create
  # before_action :find_user, except: %i[create index]

  def index

  end

  def show
  end

  def create
    conversation = Conversation.get(params[:user_id_sender], params[:user_id_recipient])

    render json: conversation, status: :ok
  end

  def update
  end

  def destroy
  end

  private

  def add_to_conversations
    session[:conversations] ||= []
    session[:conversations] << @conversation.id
  end

  def conversated?
    session[:conversations].include?(@conversation.id)
  end
end
