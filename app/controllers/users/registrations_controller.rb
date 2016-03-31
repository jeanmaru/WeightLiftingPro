class Users::RegistrationsController < Devise::RegistrationsController

  def create
    build_resource(sign_up_params)

    if resource.save
      respond_to do |format|
        format.html {
          yield resource if block_given?
          if resource.active_for_authentication?
            set_flash_message :notice, :signed_up if is_flashing_format?
            sign_up(resource_name, resource)
            respond_with resource, :location => after_sign_up_path_for(resource)
          else
            set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
            expire_data_after_sign_in!
            respond_with resource, :location => after_inactive_sign_up_path_for(resource)
          end
        }

      end
    else
      respond_to do |format|
        format.html {
          clean_up_passwords resource
          respond_with resource
        }

      end
    end
  end

  protected
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :lname, :fname, :dob, :gender,
                                 :body_weight, :measure, :level)
  end

  def set_minimum_password_length
    if devise_mapping.validatable?
      @minimum_password_length = resource_class.password_length.min
    end
  end

  protected
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end




