class AddBizNameToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :bizname, :string
    add_column :applications, :biztype, :string
    add_column :applications, :bizadd, :string
    add_column :applications, :bizsuite, :string
    add_column :applications, :bizcity, :string
    add_column :applications, :bizstate, :string
    add_column :applications, :bizzip, :string
    add_column :applications, :bizphone, :string
  end
end
