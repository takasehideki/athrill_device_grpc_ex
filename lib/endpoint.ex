defmodule AthrillDeviceGrpcEx.Endpoint do
  use GRPC.Endpoint

  intercept GRPC.Logger.Server
  run SampleServer
end
