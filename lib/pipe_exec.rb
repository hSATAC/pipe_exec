require "pipe_exec/version"

module PipeExec
  def self.run(command)
    require 'pty'
    begin
      PTY.spawn(command) do |stdin, stdout, pid|
        begin
          stdin.each { |line| print line }
        rescue Errno::EIO
        end
      end
    rescue PTY::ChildExited
      puts "The child process exited!"
    end
  end
end
