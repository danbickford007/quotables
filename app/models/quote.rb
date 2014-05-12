class Quote < ActiveRecord::Base

  def next
    quote = Quote.where("id > ?", id).order("id ASC").first
    quote ? quote : Quote.first
  end

  def prev
    quote = Quote.where("id < ?", id).order("id DESC").first
    quote ? quote : Quote.last
  end

end
