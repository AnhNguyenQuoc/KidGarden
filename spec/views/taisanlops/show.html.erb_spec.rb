require 'rails_helper'

RSpec.describe "taisanlops/show", type: :view do
  before(:each) do
    @taisanlop = assign(:taisanlop, Taisanlop.create!(
      :tentaisan => "Tentaisan",
      :donvitaisan => "Donvitaisan",
      :nguontaisan => "Nguontaisan",
      :soluong => 2,
      :lop => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tentaisan/)
    expect(rendered).to match(/Donvitaisan/)
    expect(rendered).to match(/Nguontaisan/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
