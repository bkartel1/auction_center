require 'application_system_test_case'

class AdminUsersListTest < ApplicationSystemTestCase
  def setup
    super

    @user = users(:administrator)
    sign_in(@user)
    visit admin_users_path
  end

  def test_users_are_ordered_by_descending_created_at_date
    display_name_cells = page.find('#users-table-body').find_all('th')
    # First is users(:user)
    assert_equal('Joe John Participant', display_name_cells[0].text)

    # Second is users(:administrator) (self)
    assert_equal('John Joe Administrator', display_name_cells[1].text)
  end

  def test_user_display_names_are_links
    edited_user = users(:participant)
    display_name_cell_link = page.find('a', text: 'Joe John Participant')
    display_name_cell_link.click

    assert_current_path(admin_user_path(edited_user))
  end

  def test_can_create_new_user_accounts
    click_link('New user')

    fill_in('user[email]', with: 'new-user@auction.test')
    fill_in('user[password]', with: 'password123')
    fill_in('user[password_confirmation]', with: 'password123')
    fill_in('user[given_names]', with: 'User with Multiple Names')
    fill_in('user[identity_code]', with: '81060885963')
    fill_in('user[mobile_phone]', with: '+48600100200')
    select('Poland', from: 'user[country_code]')
    fill_in('user[surname]', with: 'Last Name')
    check('user_roles_administrator')

    click_link_or_button('Submit')

    assert_text('Created successfully')
    last_email = ActionMailer::Base.deliveries.last
    assert_equal('Confirmation instructions', last_email.subject)
    assert_equal(['new-user@auction.test'], last_email.to)
  end

  def test_certain_fields_are_required
    click_link('New user')
    click_link_or_button('Submit')

    errors_list = page.find('#errors').all('li')
    assert_equal(5, errors_list.size)
    errors_array = errors_list.collect { |i| i.text }

    expected_errors = ["Email can't be blank", "Password can't be blank",
                       "Identity code can't be blank", "Mobile phone can't be blank",
                       "Identity code is invalid"]

    assert_equal(errors_array.to_set, expected_errors.to_set)
  end
end
