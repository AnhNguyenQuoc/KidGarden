require 'rails_helper'

RSpec.describe "lops/index", type: :view do
  before(:each) do
    assign(:lops, [
      Lop.create!(
        :khoihoc => "Khoihoc",
        :lophoc => "Lophoc",
        :syso => 2,
        :department => nil
      ),
      Lop.create!(
        :khoihoc => "Khoihoc",
        :lophoc => "Lophoc",
        :syso => 2,
        :department => nil
      )
    ])
  end

  it "renders a list of lops" do
    render
    assert_select "tr>td", :text => "Khoihoc".to_s, :count => 2
    assert_select "tr>td", :text => "Lophoc".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
