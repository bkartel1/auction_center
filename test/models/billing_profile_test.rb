require 'test_helper'

class BillingProfileTest < ActiveSupport::TestCase
  def setup
    super

    @user = users(:participant)
  end

  def test_required_fields
    billing_profile = BillingProfile.new

    refute(billing_profile.valid?)
    assert_equal(["must exist"], billing_profile.errors[:user])

    assert_equal(["can't be blank"], billing_profile.errors[:street])
    assert_equal(["can't be blank"], billing_profile.errors[:city])
    assert_equal(["can't be blank"], billing_profile.errors[:postal_code])
    assert_equal(["can't be blank"], billing_profile.errors[:country])

    billing_profile.user = @user
    billing_profile.street = "Baker Street 221B"
    billing_profile.city = "London"
    billing_profile.postal_code = "NW1 6XE"
    billing_profile.country = "United Kingdom"
    assert(billing_profile.valid?)
  end

  def test_name_is_required_when_a_profile_is_for_a_legal_person
    billing_profile = BillingProfile.new
    billing_profile.user = @user
    billing_profile.street = "Baker Street 221B"
    billing_profile.city = "London"
    billing_profile.postal_code = "NW1 6XE"
    billing_profile.country = "United Kingdom"
    assert(billing_profile.valid?)

    billing_profile.legal_entity = true
    refute(billing_profile.valid?)
    assert_equal(["can't be blank"], billing_profile.errors[:vat_code])
  end
end