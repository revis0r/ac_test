module MessagesServer
  class Server
    # 
    # Запуск EventMachine
    def self.run
      EM.run do
        EM.add_periodic_timer(5) do
          ActionCable.server.broadcast('messages', message: "pong")
        end
      end
    end
  end
end