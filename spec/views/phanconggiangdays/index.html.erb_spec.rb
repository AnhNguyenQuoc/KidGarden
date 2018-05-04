require 'rails_helper'

RSpec.describe "phanconggiangdays/index", type: :view do
  before(:each) do
    assign(:phanconggiangdays, [
      Phanconggiangday.create!(
        :lop => nil,
        :employment => nil
      ),
      Phanconggiangday.create!(
        :lop => nil,
        :employment => nil
      )
    ])
  end

  it "renders a list of phanconggiangdays" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
