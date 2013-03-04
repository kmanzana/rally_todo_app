# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe List do
  before { @list = List.new(name: "Example List" ) }

  subject { @list }

  it { should respond_to(:name) }
  it { should respond_to(:items) }

  it { should be_valid}

  context "when name is not present" do
    before { @list.name = " " }
    it { should_not be_valid }
  end

  context "when name already exists" do
    before do
      List_with_same_name = @list.dup
      # may not need this next line
      List_with_same_name.name = @list.name
      List_with_same_name.save
    end

    it { should_not be_valid }
  end

  #it should set name as a date if not set (using before_save)
  #Time.now.strftime("%Y%m%d%H%M%S")
  #it should have a user attached
  #it should not allow a list with the same name (for the same user?)

end
