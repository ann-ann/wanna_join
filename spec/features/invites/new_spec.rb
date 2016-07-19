require 'feature_helper'

feature 'User can create an invite' do
  given(:active_user) { create(:active_user) }
  given(:invite_attributes) { attributes_for(:invite) }

  background do
    sign_in(active_user)
  end

  scenario 'from invites page' do
    visit invites_path
    click_link t('invites.index.create_invite')
    fill_in :invite_title, with: invite_attributes[:title]
    fill_in :invite_description, with: invite_attributes[:description]
    fill_in :invite_date, with: invite_attributes[:date]
    fill_in :invite_location, with: invite_attributes[:location]
    click_button t('helpers.submit.invite.create')
    expect(page).to have_content t('flash.invites.create.notice', resource_name: 'Invite')
   end

   context 'fails' do
    background do
      visit invites_path
      click_link t('invites.index.create_invite')
    end

    scenario 'without title' do
      fill_in :invite_title, with: ''
      click_button t('helpers.submit.invite.create')
      expect(page).to have_button t('helpers.submit.invite.create')
    end

    scenario 'without description' do
      fill_in :invite_description, with: ''
      click_button t('helpers.submit.invite.create')
      expect(page).to have_button t('helpers.submit.invite.create')
    end

    scenario 'without location' do
      fill_in :invite_location, with: ''
      click_button t('helpers.submit.invite.create')
      expect(page).to have_button t('helpers.submit.invite.create')
    end

    scenario 'without date' do
      fill_in :invite_date, with: ''
      click_button t('helpers.submit.invite.create')
      expect(page).to have_button t('helpers.submit.invite.create')
    end

    scenario 'with invalid date format' do
      fill_in :invite_date, with: invite_attributes[:title]
      click_button t('helpers.submit.invite.create')
      expect(page).to have_button t('helpers.submit.invite.create')
    end
  end
end
