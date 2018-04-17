require 'rails_helper'

RSpec.describe "lops/new", type: :view do
  before(:each) do
    assign(:lop, Lop.new(
      :khoihoc => "MyString",
      :lophoc => "MyString",
      :syso => 1,
      :department => nil
    ))
  end

  it "renders new lop form" do
    render

    assert_select "form[action=?][method=?]", lops_path, "post" do

      assert_select "input[name=?]", "lop[khoihoc]"

      assert_select "input[name=?]", "lop[lophoc]"

      assert_select "input[name=?]", "lop[syso]"

      assert_select "input[name=?]", "lop[department_id]"
    end
  end
end
