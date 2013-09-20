require 'spec_helper'

describe Launcher do
    it {should have_valid(:user_name).when('Obie')}
    it {should_not have_valid(:user_name).when('', nil)}
end
