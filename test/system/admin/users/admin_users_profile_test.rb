require 'application_system_test_case'

class AdminUsersProfileTest < ApplicationSystemTestCase
  def setup
    super
    @participant = users(:participant)
    @administrator = users(:administrator)

    sign_in(@administrator)
  end

  def test_administrator_can_update_users_role
    visit edit_admin_user_path(@participant)

    check('user_roles_administrator')
    uncheck('user_roles_participant')
    click_link_or_button('Update')
  end

  def test_administrator_can_update_users_phone_number
    visit edit_admin_user_path(@participant)

    fill_in('user[mobile_phone]', with: '+37255000003')
    click_link_or_button('Update')
    assert_text('+37255000003')
  end

  def test_mobile_phone_needs_to_be_valid
    visit edit_admin_user_path(@participant)
    fill_in('user[mobile_phone]', with: '+372 500')
    page.find('body').click # blur
    refute(page.has_button?('Update'))

    fill_in('user[mobile_phone]', with: '+37250006000')
    page.find('body').click # blur
    assert(page.has_button?('Update'))
    click_link_or_button('Update')
    assert(page.has_text?('+37250006000'))
  end

  def test_identity_code_cannot_be_changed_once_set
    visit edit_admin_user_path(@participant)

    assert(page.has_field?('user[identity_code]', disabled: true))
  end

  def test_administrator_can_delete_user
    visit admin_user_path(@participant)

    accept_confirm do
      click_link_or_button('Delete')
    end

    assert_text('Deleted successfully.')
  end
end
