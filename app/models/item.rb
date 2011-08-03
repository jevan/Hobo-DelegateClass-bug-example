class Item < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    
    rich_field :my_rich_type

    timestamps
  end
    




  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
