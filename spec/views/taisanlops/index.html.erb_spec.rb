require 'rails_helper'

RSpec.describe "taisanlops/index", type: :view do
  before(:each) do
    assign(:taisanlops, [
      Taisanlop.create!(
        :tentaisan => "Tentaisan",
        :donvitaisan => "Donvitaisan",
        :nguontaisan => "Nguontaisan",
        :soluong => 2,
        :lop => nil
      ),
      Taisanlop.create!(
        :tentaisan => "Tentaisan",
        :donvitaisan => "Donvitaisan",
        :nguontaisan => "Nguontaisan",
        :soluong => 2,
        :lop => nil
      )
    ])
  end

  it "renders a list of taisanlops" do
    render
    assert_select "tr>td", :text => "Tentaisan".to_s, :count => 2
    assert_select "tr>td", :text => "Donvitaisan".to_s, :count => 2
    assert_select "tr>td", :text => "Nguontaisan".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
