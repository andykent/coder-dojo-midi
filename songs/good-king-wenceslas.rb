require "rubygems"
require "midi"

# B B B B B B B D G A B
# C C C C C C B B B B B A A B A ... D!
# B B B B B B B D G A B
# C C C C C C B B B B A A B C D ... D!

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

end