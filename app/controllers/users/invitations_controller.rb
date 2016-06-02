class Users::InvitationsController < Devise::InvitationsController

  def create
    #throw :a
    super do |user|
      flash[:alert] = accept_user_invitation_url(:invitation_token => user.raw_invitation_token)
    end
  end


end
