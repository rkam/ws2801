task :default => :build

task :build do |t|
  sh 'gem build ws2801.gemspec' 
end

task :install do |t|
  sh 'gem build ./ws2801.gemspec' 
  sh 'gem install ./ws2801-1.2.0.gem'
#  sh 'sudo gem install ./ws2801-1.2.0.gem'
  sh 'rm ./ws2801-1.2.0.gem'
end

desc "Run tests"
#task :default => :test
