# We want a game ta chooses a random word and lets the user guess
# letters until all the "lifes" (number of letters, maybe) have been consumed
# Or the word has been fully guessed. For each word correctly guessed
# we show part of the word, lets suppose the word is "palavra" and we guessed "a"
# Then it will be shown "_a_a__a", if afterwards we guess "l" it will show "_ala__a".

defmodule Forca do
  defstruct palavra: "palavra", exibe: "_______"
  def gen_word do
    word = "palavra"
    %GuessWhat{word: word, }
  end

  def guess(character) do

  end
end
