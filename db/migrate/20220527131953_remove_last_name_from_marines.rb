class RemoveLastNameFromMarines < ActiveRecord::Migration[7.0]
  def change
    remove_column :marines, :last_name, :string
  end
end
