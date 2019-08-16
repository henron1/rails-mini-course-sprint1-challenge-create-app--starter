module WordCounter
  def word_count
    if !body.nil?
      @body.split.length
    else
      0
    end
  end
end
