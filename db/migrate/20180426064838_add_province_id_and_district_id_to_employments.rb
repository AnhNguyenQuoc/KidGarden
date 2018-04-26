class AddProvinceIdAndDistrictIdToEmployments < ActiveRecord::Migration[5.1]
  def change
    add_reference :employments, :province, foreign_key: true
    add_reference :employments, :district, foreign_key: true
  end
end
