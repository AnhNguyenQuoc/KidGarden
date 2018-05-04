require 'rails_helper'

RSpec.describe "phanconggiangdays/show", type: :view do
  before(:each) do
    @phanconggiangday = assign(:phanconggiangday, Phanconggiangday.create!(
      :lop => nil,
      :employment => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
