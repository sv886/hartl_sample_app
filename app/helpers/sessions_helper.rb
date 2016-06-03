module SessionsHelper

  def sign_in(user)
    remember_token = User.new_remember_token #create a new token
    cookies.permanent[:remember_token] = remember_token #place the raw token in the browser cookies
    user.update_attribute(:remember_token, User.digest(remember_token)) #save the hashed token to the database
    self.current_user = user #set the current user equal to the given user
  end

  def current_user=(user)
    @current_user = user
  end

  def signed_in?
    !current_user.nil?
  end
end
