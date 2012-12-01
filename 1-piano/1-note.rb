require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  play 'C', 1

end