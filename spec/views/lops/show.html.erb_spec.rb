require 'rails_helper'

RSpec.describe "lops/show", type: :view do
  before(:each) do
    @lop = assign(:lop, Lop.create!(
      :khoihoc => "Khoihoc",
      :lophoc => "Lophoc",
      :syso => 2,
      :department => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Khoihoc/)
    expect(rendered).to match(/Lophoc/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
