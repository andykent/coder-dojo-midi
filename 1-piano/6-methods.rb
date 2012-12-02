require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  def play_note
    play 'C', 1
  end

  octave 2
  play_note

  octave 3
  play_note

end