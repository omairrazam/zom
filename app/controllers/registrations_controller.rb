class RegistrationsController < Devise::RegistrationsController
  def create
    super do
      # if resource.save
      #   resource.paypal_url(resource)
      # end
    end
  end


  def after_inactive_sign_up_path_for(resource)
    debugger
    resource.paypal_url(home_index_path)
  end
end