require 'rails_helper'

RSpec.describe "logos/new", type: :view do
  before(:each) do
    assign(:logo, Logo.new(
      :post_id => 1,
      :designer_id => 1
    ))
  end

  it "renders new logo form" do
    render

    assert_select "form[action=?][method=?]", logos_path, "post" do

      assert_select "input#logo_post_id[name=?]", "logo[post_id]"

      assert_select "input#logo_designer_id[name=?]", "logo[designer_id]"
    end
  end
end
