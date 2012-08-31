class Web::ProtectedController < Web::ApplicationController

	include AuthHelper
	before_filter :require_login

end
