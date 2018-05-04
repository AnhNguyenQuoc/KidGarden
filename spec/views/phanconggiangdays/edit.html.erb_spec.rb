require 'rails_helper'

RSpec.describe "phanconggiangdays/edit", type: :view do
  before(:each) do
    @phanconggiangday = assign(:phanconggiangday, Phanconggiangday.create!(
      :lop => nil,
      :employment => nil
    ))
  end

  it "renders the edit phanconggiangday form" do
    render

    assert_select "form[action=?][method=?]", phanconggiangday_path(@phanconggiangday), "post" do

      assert_select "input[name=?]", "phanconggiangday[lop_id]"

      assert_select "input[name=?]", "phanconggiangday[employment_id]"
    end
  end
end
