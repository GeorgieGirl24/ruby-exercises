class Madlib
  attr_reader :a_noun, :a_verb, :an_adjective, :an_adverb
  def initialize
    @a_noun = a_noun
    @a_verb = a_verb
    @an_adjective = an_adjective
    @an_adverb = an_adverb
  end

  def noun(input)
    @a_noun = input
  end

  def verb(input)
    @a_verb = input
  end

  def adjective(input)
    @an_adjective = input
  end

  def adverb(input)
    @an_adverb = input
  end

  def result
    "Do you #{@a_verb} your #{@an_adjective} #{@a_noun} #{@an_adverb}? That's hilarious!"
  end
end
