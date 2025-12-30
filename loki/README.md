# Home Assistant Add-on: Loki

Loki is a horizontally scalable, highly available, multi-tenant log aggregation system inspired by Prometheus. It is designed to be potentially very cost-effective and easy to operate, as it does not index the contents of the logs, but rather a set of labels for each log stream.

## Installation

The installation of this add-on is pretty straightforward and not different in comparison to installing any other Home Assistant add-on.

1.  Search for the "Loki" add-on in the Supervisor add-on store and install it.
2.  Start the "Loki" add-on.
3.  Check the logs of the "Loki" add-on to see if everything went well.

## Configuration

**Note**: *Remember to restart the add-on when the configuration is changed.*

Example add-on configuration:

```yaml
log_level: info
http_listen_port: 3100
grpc_listen_port: 9096
```

### Option: `log_level`

The `log_level` option controls the level of log output by the add-on and can be changed to be more or less verbose, which might be useful when you are dealing with an unknown issue. Possible values are:

-   `trace`
-   `debug`
-   `info`
-   `notice`
-   `warning`
-   `error`
-   `fatal`

### Option: `http_listen_port`

The port on which Loki will listen for HTTP traffic. Default is `3100`.

### Option: `grpc_listen_port`

The port on which Loki will listen for gRPC traffic. Default is `9096`.

## Support

Got questions?
You can open an issue here on GitHub.


