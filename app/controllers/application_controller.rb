class ApplicationController < ActionController::Base

  def forem_user
    current_user
  end
  helper_method :forem_user

  before_action :configure_permitted_parameters, if: :devise_controller?
  after_filter :store_location
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  # Permite que adicionemos atributos adicionais nas views padrao do devise
  # alem dos atributos padrao que ja vem nos form. Sem incluir o rails nao aceita
  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :nome
    devise_parameter_sanitizer.for(:sign_up) << :username
  end

# metodos que possibilitam apos login ou sign up e update ir para pagina inicial
def store_location
  # store last url - this is needed for post-login redirect to whatever the user last visited.
  return unless request.get? 
  if (request.path != "/users/sign_in" &&
      request.path != "/users/sign_up" &&
      request.path != "/users/password/new" &&
      request.path != "/users/password/edit" &&
      request.path != "/users/confirmation" &&
      request.path != "/users/sign_out" &&
      !request.xhr?) # don't store ajax calls
    session[:previous_url] = request.fullpath 
  end
end

def after_sign_up_path_for(resource)
  session[:previous_url] || root_path
end

end
