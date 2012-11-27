require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)
TEMPO   = 180
QUARTER = 60 / TEMPO.to_f
N       = QUARTER * 4

MIDI.using(o) do

  play 'B3', N / 4
  play 'B3', N / 4
  play 'B3', N / 2

  play 'B3', N / 4
  play 'B3', N / 4
  play 'B3', N / 2

  play 'B3', N / 4
  play 'D4', N / 4
  play 'G3', N / 4
  play 'A3', N / 4

  play 'B3', N

  play 'C4', N / 4
  play 'C4', N / 4
  play 'C4', N / 4 + N / 8
  play 'C4', N / 8

  play 'C4', N / 4
  play 'B3', N / 4
  play 'B3', N / 4
  play 'B3', N / 8
  play 'B3', N / 8

  play 'B3', N / 4
  play 'A3', N / 4
  play 'A3', N / 4
  play 'B3', N / 4

  play 'A3', N / 2
  play 'D4', N / 2

end
