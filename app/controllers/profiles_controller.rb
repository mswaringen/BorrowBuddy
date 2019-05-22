class ProfilesController < ApplicationController
def dashboard
  @user = current_user
  @items = policy_scope(Item).where(owner: current_user)
  if @user.profile
  @profile = current_user.profile
  else
  @profile = Profile.create(user: @user)
  end
  authorize @profile

end
end


