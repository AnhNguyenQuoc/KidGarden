require 'rails_helper'

RSpec.describe "nhansus/index", type: :view do
  before(:each) do
    assign(:nhansus, [
      Nhansu.create!(
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
      ),
      Nhansu.create!(
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
      )
    ])
  end

  it "renders a list of nhansus" do
    render
    assert_select "tr>td", :text => "Hoten".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Tengoikhac".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Noicapcmnd".to_s, :count => 2
    assert_select "tr>td", :text => "Tenxeptkb".to_s, :count => 2
    assert_select "tr>td", :text => "Dantoc".to_s, :count => 2
    assert_select "tr>td", :text => "Tongiao".to_s, :count => 2
    assert_select "tr>td", :text => "Quoctich".to_s, :count => 2
    assert_select "tr>td", :text => "Noisinh".to_s, :count => 2
    assert_select "tr>td", :text => "Diachithuongtru".to_s, :count => 2
    assert_select "tr>td", :text => "Noiohiennay".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Thanhphanxuatthan".to_s, :count => 2
    assert_select "tr>td", :text => "Dienuutiengd".to_s, :count => 2
    assert_select "tr>td", :text => "Dienuutienbanthan".to_s, :count => 2
    assert_select "tr>td", :text => "Nangkieu".to_s, :count => 2
    assert_select "tr>td", :text => "Suckhoe".to_s, :count => 2
    assert_select "tr>td", :text => "Nhommau".to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Stk".to_s, :count => 2
    assert_select "tr>td", :text => "Nganhangmotaikhoan".to_s, :count => 2
    assert_select "tr>td", :text => "Sobhxh".to_s, :count => 2
    assert_select "tr>td", :text => "Hethongtuyendung".to_s, :count => 2
    assert_select "tr>td", :text => "Coquantuyendung".to_s, :count => 2
    assert_select "tr>td", :text => "Congviecduocgiao".to_s, :count => 2
    assert_select "tr>td", :text => "Thuocloaicanbo".to_s, :count => 2
    assert_select "tr>td", :text => "Nhomcvhiennay".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Chucvuhientai".to_s, :count => 2
    assert_select "tr>td", :text => 9.5.to_s, :count => 2
  end
end
