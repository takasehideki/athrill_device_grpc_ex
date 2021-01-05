defmodule SampleServer do
  use GRPC.Server, service: Example.SampleService.Service

  def request(req, _stream) do
    IO.inspect("name=#{req.name} clock=#{req.clock}")

    Example.SampleReply.new(message: "Hello #{req.name}", ercd: "324")
  end
end
