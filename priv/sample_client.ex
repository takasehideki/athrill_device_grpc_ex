{:ok, channel} = GRPC.Stub.connect("localhost:50051", interceptors: [GRPC.Logger.Client])

{:ok, reply} =
  channel |> Example.SampleService.Stub.request(Example.SampleRequest.new(name: "grpc-elixir", clock: 100))

IO.inspect(reply)