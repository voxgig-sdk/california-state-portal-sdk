# CaliforniaStatePortal SDK

Reach the State of California's main public portal at ca.gov for government services and resource links

> TypeScript, Python, PHP, Golang, Ruby, Lua SDKs, a CLI, an interactive REPL, and an MCP server for AI agents — all generated from one OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).

## About California State Portal API

[CA.gov](https://www.ca.gov) is the official portal of the State of California. It links residents and visitors to state departments and common government tasks such as DMV/Real ID, birth certificates, tax refunds, traffic tickets, and business licences.

This SDK targets the ca.gov web portal itself rather than a structured REST API. The only documented endpoint is a `GET` against the portal root (`https://www.ca.gov/`), which returns the HTML homepage. There are no published JSON endpoints, query parameters, or authentication requirements for the portal.

For programmatic access to California government data, the portal links out to [data.ca.gov](https://data.ca.gov), the state's open data catalogue, which is a separate service from ca.gov itself.

## Try it

**TypeScript**
```bash
npm install california-state-portal
```

**Python**
```bash
pip install california-state-portal-sdk
```

**PHP**
```bash
composer require voxgig/california-state-portal-sdk
```

**Golang**
```bash
go get github.com/voxgig-sdk/california-state-portal-sdk/go
```

**Ruby**
```bash
gem install california-state-portal-sdk
```

**Lua**
```bash
luarocks install california-state-portal-sdk
```

## 30-second quickstart

### TypeScript

```ts
import { CaliforniaStatePortalSDK } from 'california-state-portal'

const client = new CaliforniaStatePortalSDK({})

// List all services
const services = await client.Service().list()
```

See the [TypeScript README](ts/README.md) for the
full guide, or scroll down for the same example in other languages.

## What's in the box

| Surface | Use it for | Path |
| --- | --- | --- |
| **SDK** (TypeScript, Python, PHP, Golang, Ruby, Lua) | App integration | `ts/` `py/` `php/` `go/` `rb/` `lua/` |
| **CLI** | Scripts, CI, ops, one-off API calls | `go-cli/` |
| **MCP server** | AI agents (Claude, Cursor, Cline) | `go-mcp/` |

## Use it from an AI agent (MCP)

The generated MCP server exposes every operation in this SDK as an
[MCP](https://modelcontextprotocol.io) tool that Claude, Cursor or Cline
can call directly. Build and register it:

```bash
cd go-mcp && go build -o california-state-portal-mcp .
```

Then add it to your agent's MCP config (Claude Desktop, Cursor, etc.):

```json
{
  "mcpServers": {
    "california-state-portal": {
      "command": "/abs/path/to/california-state-portal-mcp"
    }
  }
}
```

## Entities

The API exposes one entity:

| Entity | Description | API path |
| --- | --- | --- |
| **Service** | Represents the ca.gov portal as a single web service; the only documented call is `GET /` against `https://www.ca.gov`, which returns the homepage HTML listing state services and department links. | `/api/services` |

Each entity supports the following operations where available: **load**,
**list**, **create**, **update**, and **remove**.

## Quickstart in other languages

### Python

```python
from californiastateportal_sdk import CaliforniaStatePortalSDK

client = CaliforniaStatePortalSDK({})

# List all services
services, err = client.Service(None).list(None, None)
```

### PHP

```php
<?php
require_once 'californiastateportal_sdk.php';

$client = new CaliforniaStatePortalSDK([]);

// List all services
[$services, $err] = $client->Service(null)->list(null, null);
```

### Golang

```go
import sdk "github.com/voxgig-sdk/california-state-portal-sdk/go"

client := sdk.NewCaliforniaStatePortalSDK(map[string]any{})

// List all services
services, err := client.Service(nil).List(nil, nil)
```

### Ruby

```ruby
require_relative "CaliforniaStatePortal_sdk"

client = CaliforniaStatePortalSDK.new({})

# List all services
services, err = client.Service(nil).list(nil, nil)
```

### Lua

```lua
local sdk = require("california-state-portal_sdk")

local client = sdk.new({})

-- List all services
local services, err = client:Service(nil):list(nil, nil)
```

## Unit testing in offline mode

Every SDK ships a test mode that swaps the HTTP transport for an
in-memory mock, so unit tests run offline.

### TypeScript

```ts
const client = CaliforniaStatePortalSDK.test()
const result = await client.Service().load({ id: 'test01' })
// result.ok === true, result.data contains mock data
```

### Python

```python
client = CaliforniaStatePortalSDK.test(None, None)
result, err = client.Service(None).load(
    {"id": "test01"}, None
)
```

### PHP

```php
$client = CaliforniaStatePortalSDK::test(null, null);
[$result, $err] = $client->Service(null)->load(
    ["id" => "test01"], null
);
```

### Golang

```go
client := sdk.TestSDK(nil, nil)
result, err := client.Service(nil).Load(
    map[string]any{"id": "test01"}, nil,
)
```

### Ruby

```ruby
client = CaliforniaStatePortalSDK.test(nil, nil)
result, err = client.Service(nil).load(
  { "id" => "test01" }, nil
)
```

### Lua

```lua
local client = sdk.test(nil, nil)
local result, err = client:Service(nil):load(
  { id = "test01" }, nil
)
```

## How it works

Every SDK call runs the same five-stage pipeline:

1. **Point** — resolve the API endpoint from the operation definition.
2. **Spec** — build the HTTP specification (URL, method, headers, body).
3. **Request** — send the HTTP request.
4. **Response** — receive and parse the response.
5. **Result** — extract the result data for the caller.

A feature hook fires at each stage (e.g. `PrePoint`, `PreSpec`,
`PreRequest`), so features can inspect or modify the pipeline without
forking the SDK.

### Features

| Feature | Purpose |
| --- | --- |
| **TestFeature** | In-memory mock transport for testing without a live server |

Pass custom features via the `extend` option at construction time.

### Direct and Prepare

For endpoints the entity model doesn't cover, use the low-level methods:

- **`direct(fetchargs)`** — build and send an HTTP request in one step.
- **`prepare(fetchargs)`** — build the request without sending it.

Both accept a map with `path`, `method`, `params`, `query`,
`headers`, and `body`. See the [How-to guides](#how-to-guides) below.

## How-to guides

### Make a direct API call

When the entity interface does not cover an endpoint, use `direct`:

**TypeScript:**
```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example' },
})
console.log(result.data)
```

**Python:**
```python
result, err = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example"},
})
```

**PHP:**
```php
[$result, $err] = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example"],
]);
```

**Go:**
```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example"},
})
```

**Ruby:**
```ruby
result, err = client.direct({
  "path" => "/api/resource/{id}",
  "method" => "GET",
  "params" => { "id" => "example" },
})
```

**Lua:**
```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example" },
})
```

## Per-language documentation

- [TypeScript](ts/README.md)
- [Python](py/README.md)
- [PHP](php/README.md)
- [Golang](go/README.md)
- [Ruby](rb/README.md)
- [Lua](lua/README.md)

## Using the California State Portal API

- Upstream: [https://www.ca.gov](https://www.ca.gov)

- Content is published by the State of California on its official ca.gov portal.
- ca.gov is a public-facing website rather than a documented REST API, so no formal API terms or licence are published.
- Respect any notices on individual department sites and the State of California's terms of use when reusing content.

---

Generated from the California State Portal API OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).
