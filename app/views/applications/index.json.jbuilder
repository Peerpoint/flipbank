json.array!(@applications) do |application|
  json.extract! application, :id, :coll_address, :guarantor, :phone, :email, :trans_type, :lien_position, :gross_loan, :liens_paid, :cash_out, :holdback, :equity, :closing_costs, :due_diligence, :appraisal, :dd_fee_rebate, :processing_fee
  json.url application_url(application, format: :json)
end
