require 'test_helper'

class ApplicationsControllerTest < ActionController::TestCase
  setup do
    @application = applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create application" do
    assert_difference('Application.count') do
      post :create, application: { appraisal: @application.appraisal, cash_out: @application.cash_out, closing_costs: @application.closing_costs, coll_address: @application.coll_address, dd_fee_rebate: @application.dd_fee_rebate, due_diligence: @application.due_diligence, email: @application.email, equity: @application.equity, gross_loan: @application.gross_loan, guarantor: @application.guarantor, holdback: @application.holdback, lien_position: @application.lien_position, liens_paid: @application.liens_paid, phone: @application.phone, processing_fee: @application.processing_fee, trans_type: @application.trans_type }
    end

    assert_redirected_to application_path(assigns(:application))
  end

  test "should show application" do
    get :show, id: @application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @application
    assert_response :success
  end

  test "should update application" do
    patch :update, id: @application, application: { appraisal: @application.appraisal, cash_out: @application.cash_out, closing_costs: @application.closing_costs, coll_address: @application.coll_address, dd_fee_rebate: @application.dd_fee_rebate, due_diligence: @application.due_diligence, email: @application.email, equity: @application.equity, gross_loan: @application.gross_loan, guarantor: @application.guarantor, holdback: @application.holdback, lien_position: @application.lien_position, liens_paid: @application.liens_paid, phone: @application.phone, processing_fee: @application.processing_fee, trans_type: @application.trans_type }
    assert_redirected_to application_path(assigns(:application))
  end

  test "should destroy application" do
    assert_difference('Application.count', -1) do
      delete :destroy, id: @application
    end

    assert_redirected_to applications_path
  end
end
