require 'rails_helper'

RSpec.describe "phanconggiangdays/new", type: :view do
  before(:each) do
    assign(:phanconggiangday, Phanconggiangday.new(
      :lop => nil,
      :employment => nil
    ))
  end

  it "renders new phanconggiangday form" do
    render

    assert_select "form[action=?][method=?]", phanconggiangdays_path, "post" do

      assert_select "input[name=?]", "phanconggiangday[lop_id]"

      assert_select "input[name=?]", "phanconggiangday[employment_id]"
    end
  end
end
