class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(name: params[:'/login'][:name])

    if user && user.authenticate(params[:'/login'][:password])
      session[:id_user] = user.id
      redirect_to membros_path
    else
      redirect_to '/login', notice: "Senha ou login inválido"
    end
  end

  def destroy
    session[:id_user] = nil
    redirect_to '/login'
  end
end
