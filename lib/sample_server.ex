defmodule SampleServer do
  use GRPC.Server, service: Example.SampleService.Service

  def request(request, _stream) do
    Example.SampleReply.new(message: "Hello #{request.name}", ercd: "324")
  end
end
