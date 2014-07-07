require 'rails_helper'

RSpec.describe "libraries/index", :type => :view do
  before(:each) do
    assign(:libraries, [
      Library.create!(
        :url => "Url",
        :name => "Name"
      ),
      Library.create!(
        :url => "Url",
        :name => "Name"
      )
    ])
  end

  it "renders a list of libraries" do
    render
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
