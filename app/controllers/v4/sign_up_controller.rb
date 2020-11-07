# frozen_string_literal: true

module V4
  class SignUpController < V4::ApplicationController
    layout "simple"

    before_action :redirect_if_signed_in

    def new
      @form = SignUpForm.new
    end

    def create
      @form = SignUpForm.new(sign_up_form_params)

      if @form.invalid?
        return render(:new)
      end

      EmailConfirmation.new(email: @form.email, back: @form.back).confirm_to_sign_up!

      flash[:notice] = t("messages.sign_up.create.mail_has_sent")
      redirect_to root_path
    end

    private

    def sign_up_form_params
      permitted = params.require(:sign_up_form).permit(:email)
      permitted[:back] = stored_location_for(:user)
      permitted
    end
  end
end
