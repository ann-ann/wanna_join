def sign_in(user)
  page.set_rack_session(user_id: user.try(:id))
end
