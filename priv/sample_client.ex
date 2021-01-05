{:ok, channel} = GRPC.Stub.connect("localhost:50051", interceptors: [GRPC.Logger.Client])

user = "grpc-elixir"
IO.inspect("Start: user=#{user}")
req = Example.SampleRequest.new(name: user)
IO.inspect(req)

{:ok, reply} =
  channel |> Example.SampleService.Stub.request(req)
IO.inspect(reply)
