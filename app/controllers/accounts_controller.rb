class AccountsController < ApplicationController

	def create
    @supplier = Supplier.find(params[:supplier_id])

    if @supplier.build_account(account_number: params[:account_number]).save
      flash[:notice] = "account successfully created"
      redirect_to supplier_path(@supplier)
    else
      flash[:alert] = "account not created"
      redirect_to supplier_path(@supplier)
    end
  end

  private
    def account_params
      params.require(:account).permit(:account_number)
    end
    
end
# c =@supplier.build_account()