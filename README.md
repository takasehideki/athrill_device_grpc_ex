# AthrillDeviceGrpcEx

## Quick Start

### Compile

```shell
$ mix do deps.get, compile
```

### Start server app

```shell
$ mix grpc.server

12:04:54.416 [info]  Running SampleServer.Endpoint with Cowboy using http://0.0.0.0:50051
```

You can also invoke a server when starting iex with `MIX_ENV=prod`

```shell
$ MIX_ENV=prod iex -S mix
Erlang/OTP 23 [erts-11.1.3] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe]


12:33:53.854 [info]  Running SampleServer.Endpoint with Cowboy using http://0.0.0.0:50051
Interactive Elixir (1.11.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> 
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
