#
# Quick, simple test to verify (minimal) functionality
#
require_relative '../lib/ws2801.rb'

WS2801.generate                # generate empty strip (Would happen from alone if you just start setting colors)

WS2801.length 5               # 25 == default

#COLORS = [ :r, :g, :b ]
#LEVELS = [ 255, 192, 128, 64, 32, 16, 8, 0 ]

COLORS = [ :g ]
LEVELS = [ 128, 32, 0 ]

COLORS.each do |c|
  LEVELS.each do |l|
    puts "green level #{l}"
    WS2801.set :pixel => :all, c => l
    sleep(0.33)
  end
  sleep(0.5)
end
