module Net
  module DNS
    class ARecord < DNS::ForwardRecord
      def initialize(opts = { })
        super opts
        self.ip = Validations.validate_ip! self.ip
        self.ipfamily = Socket::AF_INET
        @type = "A"
      end
    end
  end
end
