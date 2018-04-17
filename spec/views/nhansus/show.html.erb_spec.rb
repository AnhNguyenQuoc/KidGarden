require 'rails_helper'

RSpec.describe "nhansus/show", type: :view do
  before(:each) do
    @nhansu = assign(:nhansu, Nhansu.create!(
      :hoten => "Hoten",
      :gioitinh => false,
      :tengoikhac => "Tengoikhac",
      :sohieucongchuc => 2,
      :cmnd => 3,
      :noicapcmnd => "Noicapcmnd",
      :tenxeptkb => "Tenxeptkb",
      :dantoc => "Dantoc",
      :tongiao => "Tongiao",
      :quoctich => "Quoctich",
      :noisinh => "Noisinh",
      :diachithuongtru => "Diachithuongtru",
      :noiohiennay => "Noiohiennay",
      :dtcoquan => 4,
      :dtnharieng => 5,
      :dtdd => 6,
      :email => "Email",
      :tinhtranghonnhan => false,
      :thanhphanxuatthan => "Thanhphanxuatthan",
      :dienuutiengd => "Dienuutiengd",
      :dienuutienbanthan => "Dienuutienbanthan",
      :nangkieu => "Nangkieu",
      :suckhoe => "Suckhoe",
      :nhommau => "Nhommau",
      :chieucao => 7,
      :cannang => 8,
      :khuyettan => false,
      :stk => "Stk",
      :nganhangmotaikhoan => "Nganhangmotaikhoan",
      :sobhxh => "Sobhxh",
      :hethongtuyendung => "Hethongtuyendung",
      :coquantuyendung => "Coquantuyendung",
      :congviecduocgiao => "Congviecduocgiao",
      :thuocloaicanbo => "Thuocloaicanbo",
      :nhomcvhiennay => "Nhomcvhiennay",
      :dangnghibhxh => false,
      :chucvuhientai => "Chucvuhientai",
      :hesophucap => 9.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Hoten/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Tengoikhac/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Noicapcmnd/)
    expect(rendered).to match(/Tenxeptkb/)
    expect(rendered).to match(/Dantoc/)
    expect(rendered).to match(/Tongiao/)
    expect(rendered).to match(/Quoctich/)
    expect(rendered).to match(/Noisinh/)
    expect(rendered).to match(/Diachithuongtru/)
    expect(rendered).to match(/Noiohiennay/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Thanhphanxuatthan/)
    expect(rendered).to match(/Dienuutiengd/)
    expect(rendered).to match(/Dienuutienbanthan/)
    expect(rendered).to match(/Nangkieu/)
    expect(rendered).to match(/Suckhoe/)
    expect(rendered).to match(/Nhommau/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Stk/)
    expect(rendered).to match(/Nganhangmotaikhoan/)
    expect(rendered).to match(/Sobhxh/)
    expect(rendered).to match(/Hethongtuyendung/)
    expect(rendered).to match(/Coquantuyendung/)
    expect(rendered).to match(/Congviecduocgiao/)
    expect(rendered).to match(/Thuocloaicanbo/)
    expect(rendered).to match(/Nhomcvhiennay/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Chucvuhientai/)
    expect(rendered).to match(/9.5/)
  end
end
