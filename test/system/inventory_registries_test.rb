require "application_system_test_case"

class InventoryRegistriesTest < ApplicationSystemTestCase
  setup do
    @inventory_registry = inventory_registries(:one)
  end

  test "visiting the index" do
    visit inventory_registries_url
    assert_selector "h1", text: "Inventory Registries"
  end

  test "creating a Inventory registry" do
    visit inventory_registries_url
    click_on "New Inventory Registry"

    fill_in "Inventory", with: @inventory_registry.inventory_id
    fill_in "User", with: @inventory_registry.user_id
    click_on "Create Inventory registry"

    assert_text "Inventory registry was successfully created"
    click_on "Back"
  end

  test "updating a Inventory registry" do
    visit inventory_registries_url
    click_on "Edit", match: :first

    fill_in "Inventory", with: @inventory_registry.inventory_id
    fill_in "User", with: @inventory_registry.user_id
    click_on "Update Inventory registry"

    assert_text "Inventory registry was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventory registry" do
    visit inventory_registries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventory registry was successfully destroyed"
  end
end
