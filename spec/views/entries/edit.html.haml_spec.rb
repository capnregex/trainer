require 'rails_helper'

RSpec.describe "entries/edit", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      :key => "MyString",
      :acronym => "MyString",
      :title => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit entry form" do
    render

    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do

      assert_select "input[name=?]", "entry[key]"

      assert_select "input[name=?]", "entry[acronym]"

      assert_select "input[name=?]", "entry[title]"

      assert_select "textarea[name=?]", "entry[desc]"
    end
  end
end
