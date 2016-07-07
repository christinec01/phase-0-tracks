class TodoList
  def initialize(list_of_items)
    @list_of_items = list_of_items
  end

  def get_items
    return @list_of_items
  end
  def add_item(new_item)
    @list_of_items << new_item
    return @list_of_items
  end
  def delete_item(item)
    @list_of_items.delete(item)
    return @list_of_items
  end
  def get_item(index)
    return @list_of_items[index] 
  end
end
