class ProfileController < ApplicationController

def index
  @items = policy_scope(Item).where(owner: current_user)
end
end
