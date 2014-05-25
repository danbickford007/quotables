class Quote < ActiveRecord::Base

  def next
    quote = Quote.where("id > ?", id).order("id ASC").first
    quote ? quote : Quote.first
  end

  def prev
    quote = Quote.where("id < ?", id).order("id DESC").first
    quote ? quote : Quote.last
  end

  def generate_next(direction)
    if direction == 'next' 
      @quote = Quote.find(self.next.id)
    elsif direction == 'previous'
      @quote = Quote.find(self.prev.id)
    end
    @quote || self
  end

end
