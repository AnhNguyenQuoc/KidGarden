require 'rails_helper'

RSpec.describe "nhansus/new", type: :view do
  before(:each) do
    assign(:nhansu, Nhansu.new(
      :hoten => "MyString",
      :gioitinh => false,
      :tengoikhac => "MyString",
      :sohieucongchuc => 1,
      :cmnd => 1,
      :noicapcmnd => "MyString",
      :tenxeptkb => "MyString",
      :dantoc => "MyString",
      :tongiao => "MyString",
      :quoctich => "MyString",
      :noisinh => "MyString",
      :diachithuongtru => "MyString",
      :noiohiennay => "MyString",
      :dtcoquan => 1,
      :dtnharieng => 1,
      :dtdd => 1,
      :email => "MyString",
      :tinhtranghonnhan => false,
      :thanhphanxuatthan => "MyString",
      :dienuutiengd => "MyString",
      :dienuutienbanthan => "MyString",
      :nangkieu => "MyString",
      :suckhoe => "MyString",
      :nhommau => "MyString",
      :chieucao => 1,
      :cannang => 1,
      :khuyettan => false,
      :stk => "MyString",
      :nganhangmotaikhoan => "MyString",
      :sobhxh => "MyString",
      :hethongtuyendung => "MyString",
      :coquantuyendung => "MyString",
      :congviecduocgiao => "MyString",
      :thuocloaicanbo => "MyString",
      :nhomcvhiennay => "MyString",
      :dangnghibhxh => false,
      :chucvuhientai => "MyString",
      :hesophucap => 1.5
    ))
  end

  it "renders new nhansu form" do
    render

    assert_select "form[action=?][method=?]", nhansus_path, "post" do

      assert_select "input[name=?]", "nhansu[hoten]"

      assert_select "input[name=?]", "nhansu[gioitinh]"

      assert_select "input[name=?]", "nhansu[tengoikhac]"

      assert_select "input[name=?]", "nhansu[sohieucongchuc]"

      assert_select "input[name=?]", "nhansu[cmnd]"

      assert_select "input[name=?]", "nhansu[noicapcmnd]"

      assert_select "input[name=?]", "nhansu[tenxeptkb]"

      assert_select "input[name=?]", "nhansu[dantoc]"

      assert_select "input[name=?]", "nhansu[tongiao]"

      assert_select "input[name=?]", "nhansu[quoctich]"

      assert_select "input[name=?]", "nhansu[noisinh]"

      assert_select "input[name=?]", "nhansu[diachithuongtru]"

      assert_select "input[name=?]", "nhansu[noiohiennay]"

      assert_select "input[name=?]", "nhansu[dtcoquan]"

      assert_select "input[name=?]", "nhansu[dtnharieng]"

      assert_select "input[name=?]", "nhansu[dtdd]"

      assert_select "input[name=?]", "nhansu[email]"

      assert_select "input[name=?]", "nhansu[tinhtranghonnhan]"

      assert_select "input[name=?]", "nhansu[thanhphanxuatthan]"

      assert_select "input[name=?]", "nhansu[dienuutiengd]"

      assert_select "input[name=?]", "nhansu[dienuutienbanthan]"

      assert_select "input[name=?]", "nhansu[nangkieu]"

      assert_select "input[name=?]", "nhansu[suckhoe]"

      assert_select "input[name=?]", "nhansu[nhommau]"

      assert_select "input[name=?]", "nhansu[chieucao]"

      assert_select "input[name=?]", "nhansu[cannang]"

      assert_select "input[name=?]", "nhansu[khuyettan]"

      assert_select "input[name=?]", "nhansu[stk]"

      assert_select "input[name=?]", "nhansu[nganhangmotaikhoan]"

      assert_select "input[name=?]", "nhansu[sobhxh]"

      assert_select "input[name=?]", "nhansu[hethongtuyendung]"

      assert_select "input[name=?]", "nhansu[coquantuyendung]"

      assert_select "input[name=?]", "nhansu[congviecduocgiao]"

      assert_select "input[name=?]", "nhansu[thuocloaicanbo]"

      assert_select "input[name=?]", "nhansu[nhomcvhiennay]"

      assert_select "input[name=?]", "nhansu[dangnghibhxh]"

      assert_select "input[name=?]", "nhansu[chucvuhientai]"

      assert_select "input[name=?]", "nhansu[hesophucap]"
    end
  end
end
