class Admin::UsersController < Admin::BaseController
  def index
    before_filter :authorize_admin!
  end
end
