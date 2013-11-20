require 'spec_helper'

describe Delivery do
  it { should have_many :documents }
  it { should validate_presence_of :name }
  it { should validate_presence_of :user_email }
  it { should validate_presence_of :recipient_email }
end
