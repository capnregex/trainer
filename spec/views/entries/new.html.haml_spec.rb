require 'rails_helper'

RSpec.describe "entries/new", type: :view do
  before(:each) do
    assign(:entry, Entry.new(
      :key => "MyString",
      :acronym => "MyString",
      :title => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders new entry form" do
    render

    assert_select "form[action=?][method=?]", entries_path, "post" do

      assert_select "input[name=?]", "entry[key]"

      assert_select "input[name=?]", "entry[acronym]"

      assert_select "input[name=?]", "entry[title]"

      assert_select "textarea[name=?]", "entry[desc]"
    end
  end
end
