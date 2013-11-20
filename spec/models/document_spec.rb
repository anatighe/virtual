require 'spec_helper'

describe Document do
  it { should belong_to :delivery }
  it { should have_attached_file :doc }
  it { should validate_attachment_presence :doc }
end

