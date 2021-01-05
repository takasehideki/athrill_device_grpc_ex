# AthrillDeviceGrpcEx

## Quick Start

### Compile

```shell
$ mix do deps.get, compile
```

### Start server app

```shell
$ mix grpc.server

11:39:26.240 [info]  Running AthrillDeviceGrpcEx.Endpoint with Cowboy using http://0.0.0.0:50051
```

### Run client script (on another terminal)

```shell
$ mix run priv/sample_client.ex

11:39:40.707 [info]  Call request of example.SampleService

11:39:40.745 [info]  Got :ok in 33ms
%Example.SampleReply{ercd: "324", message: "Hello grpc-elixir"}

```

Then, the terminal with server app will output the below message

```shell

11:39:40.733 [info]  Handled by SampleServer.request

11:39:40.734 [info]  Response :ok in 629µs
```