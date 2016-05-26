class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]

  # GET /applications
  # GET /applications.json
  def index
    @applications = Application.all
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
  end

  # GET /applications/new
  def new
    @application = Application.new
  end

  # GET /applications/1/edit
  def edit
  end

  # POST /applications
  # POST /applications.json
  def create
    @application = Application.new(application_params)

    respond_to do |format|
      if @application.save
        format.html { redirect_to @application, notice: 'Application was successfully created.' }
        format.json { render :show, status: :created, location: @application }
      else
        format.html { render :new }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applications/1
  # PATCH/PUT /applications/1.json
  def update
    respond_to do |format|
      if @application.update(application_params)
        format.html { redirect_to @application, notice: 'Application was successfully updated.' }
        format.json { render :show, status: :ok, location: @application }
      else
        format.html { render :edit }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applications/1
  # DELETE /applications/1.json
  def destroy
    @application.destroy
    respond_to do |format|
      format.html { redirect_to applications_url, notice: 'Application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:application).permit(:coll_address, :guarantor, :phone, :email, :trans_type, :lien_position, :gross_loan, :liens_paid, :cash_out, :holdback, :equity, :closing_costs, :due_diligence, :appraisal, :dd_fee_rebate, :processing_fee, :bizname, :entity, :fname, :lname, :home_address, :hcity, :hstate, :hzip, :hphone, :hemail, :firsttime, :propsown, :purchsixmo, :purchtwevelemo, :purchlife, :avg_price, :twelve_in_tweleve, :sixty_days, :bk,  :last_fc_ss, :citizen, :credit_score, :ssn, :bizadd, :bizcity, :bizstate, :bizzip, :bizphone, :bizemail, :sixmonth_reserves, :guarantee, :subcity, :substate, :subzip, :subpin, :prop_type, :zoned_ag, :fouracres, :miles_sub, :fivemiles_amenities, :contract, :seller_con, :contract_exp, :salesprice, :purch_date, :purch_price, :verif_improv, :payoff, :hard_money, :lender_name, :rented, :sectioneight, :mtm, :management, :mgmt_fee, :as_is_val, :rehab_funds, :arv, :arv_just, :judgment )
    end
end
