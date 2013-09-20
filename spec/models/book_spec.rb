require 'spec_helper'

describe Book do
  it {should have_valid(:title).when('Rails Way')}
  it {should have_valid(:title).when('', nil)}
end
