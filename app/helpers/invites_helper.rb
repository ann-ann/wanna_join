module InvitesHelper
  def format_datetime(datetime)
    datetime.strftime('%e %b %y %H:%M')
  end

  def maps_link(invite)
    "https://www.google.com.ua/maps/search/#{invite.country} #{invite.city} #{invite.location}"
  end
end
