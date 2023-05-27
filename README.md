# mddo-toolbox-cli
```
Commands:
  mddo-toolbox change_branch [options] b, --branch=BRANCH n, --network=NETWORK                     # Change branch of configs/n...
  mddo-toolbox compare_subsets [options] n, --network=NETWORK s, --snapshot=SNAPSHOT               # Fetch subsets diff for all...
  mddo-toolbox fetch_branch [options] n, --network=NETWORK                                         # Print current branch of co...
  mddo-toolbox fetch_snapshots [options] n, --network=NETWORK                                      # Print snapshots in network...
  mddo-toolbox fetch_subsets [options] n, --network=NETWORK s, --snapshot=SNAPSHOT                 # Fetch subsets for each lay...
  mddo-toolbox fetch_topology [options] n, --network=NETWORK s, --snapshot=SNAPSHOT                # Fetch topology data
  mddo-toolbox generate_topology [options] n, --network=NETWORK                                    # Generate topology from config
  mddo-toolbox help [COMMAND]                                                                      # Describe available command...
  mddo-toolbox load_snapshot [options] n, --network=NETWORK s, --snapshot=SNAPSHOT                 # Load configs into batfish ...
  mddo-toolbox query_snapshot [options] n, --network=NETWORK s, --snapshot=SNAPSHOT                # Query questions to batfish
  mddo-toolbox snapshot_diff [options] d, --dst-ss=DST_SS n, --network=NETWORK s, --src-ss=SRC_SS  # View diff between snapshot...
  mddo-toolbox test_reachability PATTERN_FILE                                                      # Test L3 reachability with ...
  mddo-toolbox version                                                                             # Show version
```
## Commands

### change_branch

```
Usage:
  mddo-toolbox change_branch [options] b, --branch=BRANCH n, --network=NETWORK

Options:
  n, --network=NETWORK  # Network name
  b, --branch=BRANCH    # Branch name

Change branch of configs/network repository
```

### compare_subsets

```
Usage:
  mddo-toolbox compare_subsets [options] n, --network=NETWORK s, --snapshot=SNAPSHOT

Options:
  m, [--min-score=N]      # Minimum score to print
                          # Default: 0
  f, [--format=FORMAT]    # Output format
                          # Default: json
                          # Possible values: yaml, json
  n, --network=NETWORK    # Network name
  s, --snapshot=SNAPSHOT  # Source (physical) snapshot name

Fetch subsets diff for all physical/logical snapshot topology to compare before/after linkdown
```

### fetch_branch

```
Usage:
  mddo-toolbox fetch_branch [options] n, --network=NETWORK

Options:
  n, --network=NETWORK  # Network name

Print current branch of configs/network repository
```

### fetch_snapshots

```
Usage:
  mddo-toolbox fetch_snapshots [options] n, --network=NETWORK

Options:
  n, --network=NETWORK  # Network name

Print snapshots in network on batfish
```

### fetch_subsets

```
Usage:
  mddo-toolbox fetch_subsets [options] n, --network=NETWORK s, --snapshot=SNAPSHOT

Options:
  n, --network=NETWORK    # Network name
  s, --snapshot=SNAPSHOT  # Snapshot name
  f, [--format=FORMAT]    # Output format
                          # Default: json
                          # Possible values: yaml, json

Fetch subsets for each layer in a snapshot topology
```

### fetch_topology

```
Usage:
  mddo-toolbox fetch_topology [options] n, --network=NETWORK s, --snapshot=SNAPSHOT

Options:
  n, --network=NETWORK    # Network name
  s, --snapshot=SNAPSHOT  # Snapshot name

Fetch topology data
```

### generate_topology

```
Usage:
  mddo-toolbox generate_topology [options] n, --network=NETWORK

Options:
  m, [--model-info=MODEL_INFO]              # Model info (json)
                                            # Default: model_info.json
  n, --network=NETWORK                      # Network name
  s, [--snapshot=SNAPSHOT]                  # Snapshot name (physical)
  p, [--phy-ss-only], [--no-phy-ss-only]    # Physical snapshot only
  f, [--format=FORMAT]                      # Output format
                                            # Default: json
                                            # Possible values: yaml, json
     [--log-level=LOG_LEVEL]                # Log level
                                            # Default: info
                                            # Possible values: fatal, error, warn, debug, info
     [--off-node=OFF_NODE]                  # Node name to down
     [--off-intf-re=OFF_INTF_RE]            # Interface name to down (regexp)
     [--use-parallel], [--no-use-parallel]  # Use parallel

Generate topology from config
```

### load_snapshot

```
Usage:
  mddo-toolbox load_snapshot [options] n, --network=NETWORK s, --snapshot=SNAPSHOT

Options:
  n, --network=NETWORK    # Network name
  s, --snapshot=SNAPSHOT  # Snapshot name

Load configs into batfish as a snapshot
```

### query_snapshot

```
Usage:
  mddo-toolbox query_snapshot [options] n, --network=NETWORK s, --snapshot=SNAPSHOT

Options:
  n, --network=NETWORK    # Network name
  s, --snapshot=SNAPSHOT  # Snapshot name

Query questions to batfish
```

### snapshot_diff

```
Usage:
  mddo-toolbox snapshot_diff [options] d, --dst-ss=DST_SS n, --network=NETWORK s, --src-ss=SRC_SS

Options:
  n, --network=NETWORK        # Network name
  s, --src-ss=SRC_SS          # Source snapshot name
  d, --dst-ss=DST_SS          # Destination snapshot name
  a, [--all], [--no-all]      # Print all includes unchanged object
  c, [--color], [--no-color]  # Print diff with color

View diff between snapshots in a network
```

### test_reachability

```
Usage:
  mddo-toolbox test_reachability PATTERN_FILE

Options:
  s, [--snapshot-re=SNAPSHOT_RE]    # snapshot name (regexp)
                                    # Default: .*
  t, [--test-pattern=TEST_PATTERN]  # test pattern file
  r, [--run-test], [--no-run-test]  # Save result to files and run test
  f, [--format=FORMAT]              # Output format (to stdout, ignored with --run_test)
                                    # Default: json
                                    # Possible values: yaml, json, csv
     [--log-level=LOG_LEVEL]        # Log level
                                    # Default: info
                                    # Possible values: fatal, error, warn, debug, info

Test L3 reachability with pattern file
```

### version

```
Usage:
  mddo-toolbox version

Show version
```
