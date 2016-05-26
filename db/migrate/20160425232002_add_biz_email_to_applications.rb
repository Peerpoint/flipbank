class AddBizEmailToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :bizemail, :string
    add_column :applications, :fein, :string
    add_column :applications, :sixmonth_reserves, :string
    add_column :applications, :guarantee, :string
    add_column :applications, :fname, :string
    add_column :applications, :lname, :string
    add_column :applications, :home_address, :string
    add_column :applications, :Hapt, :string
    add_column :applications, :hcity, :string
    add_column :applications, :hstate, :string
    add_column :applications, :hzip, :string
    add_column :applications, :hphone, :string
    add_column :applications, :hemail, :string
    add_column :applications, :subcity, :string
    add_column :applications, :substate, :string
    add_column :applications, :subzip, :string
    add_column :applications, :subpin, :string
    add_column :applications, :prop_type, :string
    add_column :applications, :zoned_ag, :boolean
    add_column :applications, :fouracres, :boolean
    add_column :applications, :two, :boolean
    add_column :applications, :miles_sub, :boolean
    add_column :applications, :fivemiles_amenities, :boolean
  end
end
