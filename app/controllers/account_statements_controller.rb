class AccountStatementsController < ApplicationController
  before_action :set_ledger
  
  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def set_ledger
    @ledger = current_user.ledgers.find(params[:ledger_id])
  end
end
