require 'spec_helper'

describe Author do
    it {should have_valid(:first_name).when('Obie')}
    it {should_not have_valid(:first_name).when('', nil)}
    it {should have_valid(:last_name).when('Fernandez')}
    it {should_not have_valid(:last_name).when('', nil)}
end
