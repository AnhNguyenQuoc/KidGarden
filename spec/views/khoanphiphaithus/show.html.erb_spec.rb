require 'rails_helper'

RSpec.describe "khoanphiphaithus/show", type: :view do
  before(:each) do
    @khoanphiphaithu = assign(:khoanphiphaithu, Khoanphiphaithu.create!(
      :tendichvu => "Tendichvu",
      :phidichvu => "9.99",
      :loaidichvu => "Loaidichvu",
      :kieudichvu => false,
      :hinhthuc => "Hinhthuc"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tendichvu/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Loaidichvu/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Hinhthuc/)
  end
end
