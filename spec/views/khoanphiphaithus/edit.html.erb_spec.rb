require 'rails_helper'

RSpec.describe "khoanphiphaithus/edit", type: :view do
  before(:each) do
    @khoanphiphaithu = assign(:khoanphiphaithu, Khoanphiphaithu.create!(
      :tendichvu => "MyString",
      :phidichvu => "9.99",
      :loaidichvu => "MyString",
      :kieudichvu => false,
      :hinhthuc => "MyString"
    ))
  end

  it "renders the edit khoanphiphaithu form" do
    render

    assert_select "form[action=?][method=?]", khoanphiphaithu_path(@khoanphiphaithu), "post" do

      assert_select "input[name=?]", "khoanphiphaithu[tendichvu]"

      assert_select "input[name=?]", "khoanphiphaithu[phidichvu]"

      assert_select "input[name=?]", "khoanphiphaithu[loaidichvu]"

      assert_select "input[name=?]", "khoanphiphaithu[kieudichvu]"

      assert_select "input[name=?]", "khoanphiphaithu[hinhthuc]"
    end
  end
end
