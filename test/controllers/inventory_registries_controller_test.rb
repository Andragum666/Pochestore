require 'test_helper'

class InventoryRegistriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory_registry = inventory_registries(:one)
  end

  test "should get index" do
    get inventory_registries_url
    assert_response :success
  end

  test "should get new" do
    get new_inventory_registry_url
    assert_response :success
  end

  test "should create inventory_registry" do
    assert_difference('InventoryRegistry.count') do
      post inventory_registries_url, params: { inventory_registry: { inventory_id: @inventory_registry.inventory_id, user_id: @inventory_registry.user_id } }
    end

    assert_redirected_to inventory_registry_url(InventoryRegistry.last)
  end

  test "should show inventory_registry" do
    get inventory_registry_url(@inventory_registry)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventory_registry_url(@inventory_registry)
    assert_response :success
  end

  test "should update inventory_registry" do
    patch inventory_registry_url(@inventory_registry), params: { inventory_registry: { inventory_id: @inventory_registry.inventory_id, user_id: @inventory_registry.user_id } }
    assert_redirected_to inventory_registry_url(@inventory_registry)
  end

  test "should destroy inventory_registry" do
    assert_difference('InventoryRegistry.count', -1) do
      delete inventory_registry_url(@inventory_registry)
    end

    assert_redirected_to inventory_registries_url
  end
end
