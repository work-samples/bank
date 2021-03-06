defmodule Bank.Mixfile do
  use Mix.Project

  @name    :bank
  @version "0.1.0"

  @deps [
    { :ex_doc,  ">= 0.0.0", only: [ :dev, :test ] },
    { :mix_test_watch, "~> 0.5.0" },
  ]

  @docs [
    main: "Bank",
    extras: ["README.md"]
  ]

  # ------------------------------------------------------------

  def project do
    in_production = Mix.env == :prod
    [
      app:     @name,
      version: @version,
      elixir:  ">= 1.5.2",
      deps:    @deps,
      docs:    @docs,
      build_embedded:  in_production,
    ]
  end

  def application do
    [
      extra_applications: [         # built-in apps that need starting
        :logger
      ],
    ]
  end

end
