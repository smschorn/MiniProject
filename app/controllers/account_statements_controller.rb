class AccountStatementsController < ApplicationController
  before_action :set_ledger
  before_action :set_accounts, only: [:new, :edit]
  before_action :set_account_statement, only: [:show, :edit, :update, :destroy]

  def index
  end

  def create
    @account_statement = @ledger.account_statements.new(account_statement_params)

    respond_to do |format|
      if @account_statement.save
        format.html { redirect_to ledger_account_statement_path(@ledger, @account_statement), notice: 'Account statement was successfully created.' }
        format.json { render :show, status: :created, location: @account_statement }
      else
        format.html { render :new }
        format.json { render json: @account_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @account_statement = @ledger.account_statements.new
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

  def set_accounts
    @accounts = current_user.accounts.all
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def account_statement_params
    params.require(:account_statement).permit(:ledger_id, :account_id, :current_balance, :minimum_payment)
  end

  def set_account_statement
      @account_statement = @ledger.account_statements.find(params[:id])
  end
end
