require 'rails_helper'

RSpec.describe "lops/edit", type: :view do
  before(:each) do
    @lop = assign(:lop, Lop.create!(
      :khoihoc => "MyString",
      :lophoc => "MyString",
      :syso => 1,
      :department => nil
    ))
  end

  it "renders the edit lop form" do
    render

    assert_select "form[action=?][method=?]", lop_path(@lop), "post" do

      assert_select "input[name=?]", "lop[khoihoc]"

      assert_select "input[name=?]", "lop[lophoc]"

      assert_select "input[name=?]", "lop[syso]"

      assert_select "input[name=?]", "lop[department_id]"
    end
  end
end
