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
    @quote = Quote.first
    if direction == 'next' 
      @quote = Quote.find(@quote.next.id)
    elsif direction == 'previous'
      @quote = Quote.find(@quote.prev.id)
    end
    @quote
  end

end
