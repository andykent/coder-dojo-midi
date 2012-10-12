require "rubygems"
require "midi"

o = UniMIDI::Output.open(:first)

MIDI.using(o) do

  def beats_to_time(beats)
    bps = 10
    beats / bps.to_f
  end

  def drum_loop(x)
    x.times do
      play 'C', beats_to_time(2)
      play 'E', beats_to_time(1)
      play 'D', beats_to_time(1)
    end
  end

  def basic_loop(x)
    x.times do
      play 'C', beats_to_time(4)
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