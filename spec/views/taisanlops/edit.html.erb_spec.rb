require 'rails_helper'

RSpec.describe "taisanlops/edit", type: :view do
  before(:each) do
    @taisanlop = assign(:taisanlop, Taisanlop.create!(
      :tentaisan => "MyString",
      :donvitaisan => "MyString",
      :nguontaisan => "MyString",
      :soluong => 1,
      :lop => nil
    ))
  end

  it "renders the edit taisanlop form" do
    render

    assert_select "form[action=?][method=?]", taisanlop_path(@taisanlop), "post" do

      assert_select "input[name=?]", "taisanlop[tentaisan]"

      assert_select "input[name=?]", "taisanlop[donvitaisan]"

      assert_select "input[name=?]", "taisanlop[nguontaisan]"

      assert_select "input[name=?]", "taisanlop[soluong]"

      assert_select "input[name=?]", "taisanlop[lop_id]"
    end
  end
end
