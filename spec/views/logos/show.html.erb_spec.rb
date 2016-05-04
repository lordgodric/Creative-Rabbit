require 'rails_helper'

RSpec.describe "logos/show", type: :view do
  before(:each) do
    @logo = assign(:logo, Logo.create!(
      :post_id => 1,
      :designer_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
