
def login_helper
  user = create :user
  login_as user, scope: :user
end
