class TransactionsController < ApplicationController

  before_action :find_sender, only: :create
  before_action :find_recipient, only: :create

  def new
    @transaction = Transaction.new
  end

  def create
    if @sender != @recipient && @sender.wallet.balance >= params[:amount].to_f
      perform_transaction

      redirect_to transactions_path # TODO add some notice
    else
      render :transfer # TODO add alert based on condition that is not fullfil from 11 line
    end
  end

  def index
    @transactions = Transaction.all
  end

  private

  def find_sender
    @sender = type_class(params[:sender_type]).find(params[:sender_id])
  end

  def find_recipient
    @recipient = type_class(params[:recipient_type]).find(params[:recipient_id])
  end

  def type_class(type)
    type.constantize
  end

  def perform_transaction
    ActiveRecord::Base.transaction do
      @sender.withdrawal(@recipient.wallet, params[:amount])
      @recipient.deposit(@sender.wallet, params[:amount])
    end
  end

end
