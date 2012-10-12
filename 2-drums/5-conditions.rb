require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  def drum_loop(x)
    x.times do
      play 'C', 0.2
      play 'E', 0.1
      play 'D', 0.1
    end
  end

  def basic_loop(x)
    x.times do
      play 'C', 0.4
    end
  end

  8.times do
    if rand > 0.5
      drum_loop 2
    else
      basic_loop 2
    end
  end

end