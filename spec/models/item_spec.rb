# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  complete   :boolean          default(FALSE)
#  list_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Item do
  let(:list) { FactoryGirl.create(:list) }
  before { @item = list.items.build(name: "Example Item") }

  subject { @item }

  it { should respond_to(:name) }
  it { should respond_to(:complete) }
  its(:list)     { should == list }
  its(:complete) { should == false }

  it { should be_valid }

  context "when name is not present" do
    before { @item.name = " " }
    it { should_not be_valid }
  end

  describe "accessible attributes" do
    it "should not allow access to list_id" do
      expect do
        Item.new(list_id: list.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end
  end

  context "when list_id is not present" do
    before { @item.list_id = nil }
    it { should_not be_valid }
  end
  



  #it should have default items in the list
end
