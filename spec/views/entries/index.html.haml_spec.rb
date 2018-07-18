require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  before(:each) do
    assign(:entries, [
      Entry.create!(
        :key => "Key",
        :acronym => "Acronym",
        :title => "Title",
        :desc => "MyText"
      ),
      Entry.create!(
        :key => "Key",
        :acronym => "Acronym",
        :title => "Title",
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    assert_select "tr>td", :text => "Acronym".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
