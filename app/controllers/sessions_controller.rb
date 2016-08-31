class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(name: params[:name])

    if user && user.authenticate(params['password'])
      session[:id_user] = user.id
      redirect_to users_path
    else
      redirect_to '/login', notice: "Senha ou login inválido"
    end
  end

  def destroy
    session[:id_user] = nil
    redirect_to '/login'
  end
end
