# CaliforniaStatePortal SDK configuration

module CaliforniaStatePortalConfig
  def self.make_config
    {
      "main" => {
        "name" => "CaliforniaStatePortal",
      },
      "feature" => {
        "test" => {
          "options" => {
            "active" => false,
          },
        },
      },
      "options" => {
        "base" => "https://www.ca.gov",
        "headers" => {
          "content-type" => "application/json",
        },
        "entity" => {
          "service" => {},
        },
      },
      "entity" => {
        "service" => {
          "fields" => [
            {
              "active" => true,
              "name" => "category",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "department",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 1,
            },
            {
              "active" => true,
              "name" => "description",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 2,
            },
            {
              "active" => true,
              "name" => "id",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 3,
            },
            {
              "active" => true,
              "name" => "name",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 4,
            },
            {
              "active" => true,
              "name" => "popular",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 5,
            },
            {
              "active" => true,
              "name" => "url",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 6,
            },
          ],
          "name" => "service",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "active" => true,
                  "args" => {
                    "query" => [
                      {
                        "active" => true,
                        "kind" => "query",
                        "name" => "category",
                        "orig" => "category",
                        "reqd" => false,
                        "type" => "`$STRING`",
                      },
                      {
                        "active" => true,
                        "example" => "en",
                        "kind" => "query",
                        "name" => "language",
                        "orig" => "language",
                        "reqd" => false,
                        "type" => "`$STRING`",
                      },
                      {
                        "active" => true,
                        "kind" => "query",
                        "name" => "search",
                        "orig" => "search",
                        "reqd" => false,
                        "type" => "`$STRING`",
                      },
                    ],
                  },
                  "method" => "GET",
                  "orig" => "/api/services",
                  "parts" => [
                    "api",
                    "services",
                  ],
                  "select" => {
                    "exist" => [
                      "category",
                      "language",
                      "search",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "index$" => 0,
                },
              ],
              "key$" => "list",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
      },
    }
  end


  def self.make_feature(name)
    require_relative 'features'
    CaliforniaStatePortalFeatures.make_feature(name)
  end
end
