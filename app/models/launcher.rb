class Launcher < ActiveRecord::Base
    it {should have_valid(:first_name).when('Obie')}
    it {should_not have_valid(:first_name).when('', nil, 123)}
end
