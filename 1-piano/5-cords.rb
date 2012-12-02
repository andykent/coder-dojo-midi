require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  octave 2

  play ['C', 'E', 'G'], 1

end