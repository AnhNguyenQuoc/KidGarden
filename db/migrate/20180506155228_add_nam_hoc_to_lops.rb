class AddNamHocToLops < ActiveRecord::Migration[5.1]
  def change
    add_column :lops, :namhoc, :string
  end
end
