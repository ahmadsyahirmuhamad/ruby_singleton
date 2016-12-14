class Logger

  def self.log
    @@log ||= File.open('log.txt', 'w')
  end

  def self.info(msg)
    log.puts("INFO: #{msg}")
    log.flush
  end

end

Logger.info("data created")


