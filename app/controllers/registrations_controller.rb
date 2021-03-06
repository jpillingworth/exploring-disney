class RegistrationsController < ApplicationController
  def create
    user = User.create! (
      email: params["user"]["email"],
      password: params["user"]["password"],
      password_confirmation: password["user"]["password_confirmation"]
    )

    if user
      session[:user_id] = user.id
      render jason: {
        status: :created,
        user: user
      }
    else
      render json: { status: 500 }
    end
  end
end
