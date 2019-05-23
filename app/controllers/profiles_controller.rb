class ProfilesController < ApplicationController
def dashboard
  @user = current_user
  @owned_items = policy_scope(Item).where(owner: current_user)
  @booked_items = policy_scope(Item).select do |item|
    item.users.include?(current_user)
  end
  if @user.profile
  @profile = current_user.profile
  else
  @profile = Profile.create(user: @user)
  end
  authorize @profile

end
end


