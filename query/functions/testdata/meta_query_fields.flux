from(db: "test")
    |> range(start:2018-05-22T19:53:26Z)
    |> filter(fn: (r) => r._measurement == "cpu")
    |> group(by: ["_field"])
    |> distinct(column: "_field")
    |> group(none:true)