require 'rails_helper'

RSpec.describe "entries/show", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      :key => "Key",
      :acronym => "Acronym",
      :title => "Title",
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Key/)
    expect(rendered).to match(/Acronym/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
