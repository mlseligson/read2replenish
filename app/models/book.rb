class Book < ApplicationRecord
  id = nil
  after_save {id = self.id}
end
