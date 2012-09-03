class Web::ProtectedController < Web::ApplicationController

	before_filter :require_login

end
