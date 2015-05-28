class UsersController < ApplicationController
  # POST /users
  # POST /users.json
  def create
    # expects facebook token
    secret_key = Rails.application.secrets.facebook['secret_key']
    client = Koala::Facebook::API.new(params['token'], secret_key)

    fb_user = client.get_object('/me')
    if params['userId'] == fb_user['id']
      @user = User.where(fb_id: fb_user['id']).first_or_initialize.tap do |user|
        user.attributes = fb_user.slice(*%w{first_name last_name email})
        user.save
      end

      render json: @user, status: :created
    end
  end

  private

    def user_params
      params.require(:user).permit('userId', 'token')
    end
end
