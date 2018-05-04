require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Hoten/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Choohientai/)
    expect(rendered).to match(/Hokhauthuongtru/)
    expect(rendered).to match(/Noisinh/)
    expect(rendered).to match(/Quequan/)
    expect(rendered).to match(/Dantoc/)
    expect(rendered).to match(/Dienchinhsach/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Tencha/)
    expect(rendered).to match(/Nghenghiepcha/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Tenme/)
    expect(rendered).to match(/Nghenghiepme/)
    expect(rendered).to match(/3/)
  end
end
