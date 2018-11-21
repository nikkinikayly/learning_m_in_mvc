class ChangeNameToFirstName < ActiveRecord::Migration[5.2]
  def change
                  #table      #col   #new column name
    rename_column :contacts, :name, :first_name
  end
end
