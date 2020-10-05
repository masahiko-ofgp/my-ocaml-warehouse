let hello = "Hello, world!!";;

let hello2 name = "Hello, " ^ name ^ "!!";;

let greet name =
  let s = match name with
          | None -> "Hello, world!!"
          | Some name -> "Hello, " ^ name ^ "!!"
  in
  print_endline s
;;

let () =
    print_endline hello;
    print_endline (hello2 "Tom");
    greet None;
    greet (Some "Mike");;
