require 'rails_helper'

RSpec.describe "taisanlops/new", type: :view do
  before(:each) do
    assign(:taisanlop, Taisanlop.new(
      :tentaisan => "MyString",
      :donvitaisan => "MyString",
      :nguontaisan => "MyString",
      :soluong => 1,
      :lop => nil
    ))
  end

  it "renders new taisanlop form" do
    render

    assert_select "form[action=?][method=?]", taisanlops_path, "post" do

      assert_select "input[name=?]", "taisanlop[tentaisan]"

      assert_select "input[name=?]", "taisanlop[donvitaisan]"

      assert_select "input[name=?]", "taisanlop[nguontaisan]"

      assert_select "input[name=?]", "taisanlop[soluong]"

      assert_select "input[name=?]", "taisanlop[lop_id]"
    end
  end
end
