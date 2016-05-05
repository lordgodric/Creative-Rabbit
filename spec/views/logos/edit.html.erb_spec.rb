require 'rails_helper'

RSpec.describe "logos/edit", type: :view do
  before(:each) do
    @logo = assign(:logo, Logo.create!(
      :post_id => 1,
      :designer_id => 1,
      :title => "MyString"
    ))
  end

  it "renders the edit logo form" do
    render

    assert_select "form[action=?][method=?]", logo_path(@logo), "post" do

      assert_select "input#logo_post_id[name=?]", "logo[post_id]"

      assert_select "input#logo_designer_id[name=?]", "logo[designer_id]"

      assert_select "input#logo_title[name=?]", "logo[title]"
    end
  end
end
