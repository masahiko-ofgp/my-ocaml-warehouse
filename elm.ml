type model = {
  count: int;
}

type msg =
  | Increment
  | Decrement

let update msg model =
  match msg with
  | Increment -> {count = model.count + 1}
  | Decrement -> {count = model.count - 1}

(*let view model =
  <div>
    <p>Count: {Int.to_string model.count}</p>
    <button onClick={() => dispatch Increment}>Increment</button>
    <button onClick={() => dispatch Decrement}>Decrement</button>
  </div>

let rec main model =
  let view = view model in 
  let msg = receive_message () in
  let new_model = update msg model in
  main new_model*)

let view model = Printf.printf "Count: %d\n" model.count

let rec main model =
  let view = view model in
  let msg = Increment in
  let new_model = update msg model in
  if model.count = 10 then Printf.printf "Stop\n"
  else main new_model
