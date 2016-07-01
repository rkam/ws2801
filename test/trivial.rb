#
# Quick, simple test to verify (minimal) functionality
#
require_relative '../lib/ws2801.rb'

EXTENSIVE = ARGV.length > 0

WS2801.generate                # generate empty strip (Would happen from alone if you just start setting colors)

WS2801.length 20               # 25 == default
WS2801.generate                # pre-generate

if EXTENSIVE
  COLORS = [ :r, :g, :b ]
  LEVELS = [ 255, 192, 128, 64, 32, 16, 8, 0 ]
else
  COLORS = [ :g ]
  LEVELS = [ 128, 32, 0 ]
end

COLORS.each do |c|
  LEVELS.each do |l|
    puts "#{c} level #{l}"
    WS2801.set :pixel => :all, c => l
    sleep(0.5)
  end
  sleep(0.75)
end
