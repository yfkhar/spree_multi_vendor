module SpreeMultiVendor::Spree::Api::V2::ProductsControllerDecorator
  def self.prepended(base)
    base.before_action only: [:create, :update] do
      set_vendor_id(:product)
    end
  end
end

Spree::Api::V2::ProductsController.prepend SpreeMultiVendor::Spree::Api::V2::ProductsControllerDecorator if SpreeMultiVendor::Engine.api_v1_available?
