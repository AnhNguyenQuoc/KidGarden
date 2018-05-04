require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      :hoten => "MyString",
      :gioitinh => false,
      :choohientai => "MyString",
      :hokhauthuongtru => "MyString",
      :noisinh => "MyString",
      :quequan => "MyString",
      :dantoc => "MyString",
      :dienchinhsach => "MyString",
      :canngheo => false,
      :tencha => "MyString",
      :nghenghiepcha => "MyString",
      :dienthoaibo => 1,
      :tenme => "MyString",
      :nghenghiepme => "MyString",
      :dienthoaime => 1
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input[name=?]", "student[hoten]"

      assert_select "input[name=?]", "student[gioitinh]"

      assert_select "input[name=?]", "student[choohientai]"

      assert_select "input[name=?]", "student[hokhauthuongtru]"

      assert_select "input[name=?]", "student[noisinh]"

      assert_select "input[name=?]", "student[quequan]"

      assert_select "input[name=?]", "student[dantoc]"

      assert_select "input[name=?]", "student[dienchinhsach]"

      assert_select "input[name=?]", "student[canngheo]"

      assert_select "input[name=?]", "student[tencha]"

      assert_select "input[name=?]", "student[nghenghiepcha]"

      assert_select "input[name=?]", "student[dienthoaibo]"

      assert_select "input[name=?]", "student[tenme]"

      assert_select "input[name=?]", "student[nghenghiepme]"

      assert_select "input[name=?]", "student[dienthoaime]"
    end
  end
end
