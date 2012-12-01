require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  octave 2
  play 'C', 1

  octave 3
  play 'C', 1

end