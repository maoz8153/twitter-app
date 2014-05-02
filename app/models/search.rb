class Search
  extend ActiveModel::Naming

  attr_reader :term

  def initialize (options = {})
    @term = options.fetch( :term, "")
  end

  def twitts
    Twitt.text_twitts.where(content_id: text_twitts)
  end

  private

  def text_twitts
    TextTwitt.where("body LIKE ?", search_term)
  end

  def search_term
    "%#{term}%"
  end

end