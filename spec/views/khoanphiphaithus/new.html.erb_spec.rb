require 'rails_helper'

RSpec.describe "khoanphiphaithus/new", type: :view do
  before(:each) do
    assign(:khoanphiphaithu, Khoanphiphaithu.new(
      :tendichvu => "MyString",
      :phidichvu => "9.99",
      :loaidichvu => "MyString",
      :kieudichvu => false,
      :hinhthuc => "MyString"
    ))
  end

  it "renders new khoanphiphaithu form" do
    render

    assert_select "form[action=?][method=?]", khoanphiphaithus_path, "post" do

      assert_select "input[name=?]", "khoanphiphaithu[tendichvu]"

      assert_select "input[name=?]", "khoanphiphaithu[phidichvu]"

      assert_select "input[name=?]", "khoanphiphaithu[loaidichvu]"

      assert_select "input[name=?]", "khoanphiphaithu[kieudichvu]"

      assert_select "input[name=?]", "khoanphiphaithu[hinhthuc]"
    end
  end
end
