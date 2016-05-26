class AddEntityToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :entity, :string
  end
end
