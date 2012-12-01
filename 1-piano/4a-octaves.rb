require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  play 'C2', 1

  play 'C3', 1

end
