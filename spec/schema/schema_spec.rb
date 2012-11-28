require 'spec_helper'
require 'db/migrate/create_users'

describe 'Schema' do
  before(:each) do
    $stdout.stub!(:write)
  end

  describe "#up" do  
    before(:each) do
      @t = 'table'
      CreateUsers.should_receive(:create_table).and_yield(@t)
    end

    it "should create the correct schema" do
      @t.should_receive(:string).with(:screen_name, :null => false).once
      @t.should_receive(:string).with(:password).once
      @t.should_receive(:timestamps).once

      CreateUsers.up
    end
  end

  describe "#down" do
    it "should undo the up" do
      CreateUsers.should_receive(:drop_table).with(:users)

      CreateUsers.down
    end
  end
end