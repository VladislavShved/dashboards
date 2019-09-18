module Dashboards
  class Reorderer

    def initialize(order_ids)
      @order_ids = order_ids
    end

    def reorder
      update_params = compose_params
      Dashboard.update(update_params.keys, update_params.values)
    end

    private

    def compose_params
      @order_ids.inject({}) do |memo, order_param|
        memo[order_param[:id]] = { 'order' => order_param[:order] }
        memo
      end
    end

  end
end