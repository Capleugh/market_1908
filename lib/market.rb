class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.check_stock(item) > 0
    end
  end

  def sorted_item_list
    @vendors.each do |vendor|
      vendor.each do |item, quantity|
        vendor.keys
        # trying to remember how to access the key of the hash in the vendor object here but ran out of time/got stuck
      end
    end
  end
end
