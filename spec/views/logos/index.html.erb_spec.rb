require 'rails_helper'

RSpec.describe "logos/index", type: :view do
  before(:each) do
    assign(:logos, [
      Logo.create!(
        :post_id => 1,
        :designer_id => 2
      ),
      Logo.create!(
        :post_id => 1,
        :designer_id => 2
      )
    ])
  end

  it "renders a list of logos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
