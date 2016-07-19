require 'feature_helper'

feature 'User can update an invite' do
  given(:active_user) { create(:active_user) }
  given(:invite) { create(:invite, user: active_user) }
  given(:new_invite_attrs) { attributes_for(:invite) }

  background do
    sign_in(active_user)
    visit invite_path(invite)
  end

  context 'from edit page' do
    background do
      click_link t('invites.show.edit')
    end

    scenario 'and can see fields with the invite data' do
      expect(page).to have_field(:invite_title, with: invite.title)
      expect(page).to have_field(:invite_description, with: invite.description)
      # TODO fix date formatting
      # expect(page).to have_field(:invite_date, with: invite.date)
      expect(page).to have_field(:invite_location, with: invite.location)
    end

    scenario 'and can submit new data for the invite' do
      fill_in :invite_title, with: new_invite_attrs[:title]
      fill_in :invite_description, with: new_invite_attrs[:description]
      fill_in :invite_date, with: new_invite_attrs[:date]
      fill_in :invite_location, with: new_invite_attrs[:location]
      click_button t('helpers.submit.invite.update')
      expect(page).to have_content new_invite_attrs[:title]
    end
  end

  context 'fails' do
    background do
      click_link t('invites.show.edit')
    end

    scenario 'without title' do
      fill_in :invite_title, with: ''
      click_button t('helpers.submit.invite.update')
      expect(page).to have_button t('helpers.submit.invite.update')
    end

    scenario 'without description' do
      fill_in :invite_description, with: ''
      click_button t('helpers.submit.invite.update')
      expect(page).to have_button t('helpers.submit.invite.update')
    end

    scenario 'without location' do
      fill_in :invite_location, with: ''
      click_button t('helpers.submit.invite.update')
      expect(page).to have_button t('helpers.submit.invite.update')
    end

    scenario 'without date' do
      fill_in :invite_date, with: ''
      click_button t('helpers.submit.invite.update')
      expect(page).to have_button t('helpers.submit.invite.update')
    end

    scenario 'with invalid date format' do
      fill_in :invite_date, with: new_invite_attrs[:title]
      click_button t('helpers.submit.invite.update')
      expect(page).to have_button t('helpers.submit.invite.update')
    end
  end
end

