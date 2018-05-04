require 'rails_helper'

RSpec.describe "khoanphiphaithus/index", type: :view do
  before(:each) do
    assign(:khoanphiphaithus, [
      Khoanphiphaithu.create!(
        :tendichvu => "Tendichvu",
        :phidichvu => "9.99",
        :loaidichvu => "Loaidichvu",
        :kieudichvu => false,
        :hinhthuc => "Hinhthuc"
      ),
      Khoanphiphaithu.create!(
        :tendichvu => "Tendichvu",
        :phidichvu => "9.99",
        :loaidichvu => "Loaidichvu",
        :kieudichvu => false,
        :hinhthuc => "Hinhthuc"
      )
    ])
  end

  it "renders a list of khoanphiphaithus" do
    render
    assert_select "tr>td", :text => "Tendichvu".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Loaidichvu".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Hinhthuc".to_s, :count => 2
  end
end
