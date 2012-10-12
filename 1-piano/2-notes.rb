require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  play 'C', 1
  play 'D', 1
  play 'E', 1

end