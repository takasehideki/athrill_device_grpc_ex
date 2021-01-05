# AthrillDeviceGrpcEx

## Quick Start

### Compile

```shell
$ mix do deps.get, compile
```

### Start server app

```shell
$ mix grpc.server

12:04:54.416 [info]  Running AthrillDeviceGrpcEx.Endpoint with Cowboy using http://0.0.0.0:50051
```

### Run client script (on another terminal)

```shell
$ mix run priv/sample_client.ex
"Start: user=grpc-elixir"
%Example.SampleRequest{clock: 0, name: "grpc-elixir"}

12:05:08.017 [info]  Call request of example.SampleService
%Example.SampleReply{ercd: "324", message: "Hello grpc-elixir"}

12:05:08.069 [info]  Got :ok in 48ms

```

At the same time, the terminal with server app will output the below message

```shell

12:05:08.057 [info]  Handled by SampleServer.request
"name=grpc-elixir clock=0"

12:05:08.058 [info]  Response :ok in 1ms
```
