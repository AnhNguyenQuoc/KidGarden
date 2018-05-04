require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :hoten => "Hoten",
        :gioitinh => false,
        :choohientai => "Choohientai",
        :hokhauthuongtru => "Hokhauthuongtru",
        :noisinh => "Noisinh",
        :quequan => "Quequan",
        :dantoc => "Dantoc",
        :dienchinhsach => "Dienchinhsach",
        :canngheo => false,
        :tencha => "Tencha",
        :nghenghiepcha => "Nghenghiepcha",
        :dienthoaibo => 2,
        :tenme => "Tenme",
        :nghenghiepme => "Nghenghiepme",
        :dienthoaime => 3
      ),
      Student.create!(
        :hoten => "Hoten",
        :gioitinh => false,
        :choohientai => "Choohientai",
        :hokhauthuongtru => "Hokhauthuongtru",
        :noisinh => "Noisinh",
        :quequan => "Quequan",
        :dantoc => "Dantoc",
        :dienchinhsach => "Dienchinhsach",
        :canngheo => false,
        :tencha => "Tencha",
        :nghenghiepcha => "Nghenghiepcha",
        :dienthoaibo => 2,
        :tenme => "Tenme",
        :nghenghiepme => "Nghenghiepme",
        :dienthoaime => 3
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Hoten".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Choohientai".to_s, :count => 2
    assert_select "tr>td", :text => "Hokhauthuongtru".to_s, :count => 2
    assert_select "tr>td", :text => "Noisinh".to_s, :count => 2
    assert_select "tr>td", :text => "Quequan".to_s, :count => 2
    assert_select "tr>td", :text => "Dantoc".to_s, :count => 2
    assert_select "tr>td", :text => "Dienchinhsach".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Tencha".to_s, :count => 2
    assert_select "tr>td", :text => "Nghenghiepcha".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Tenme".to_s, :count => 2
    assert_select "tr>td", :text => "Nghenghiepme".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
