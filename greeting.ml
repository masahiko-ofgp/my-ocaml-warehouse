let hello = "Hello, world!!";;

let hello2 name = "Hello, " ^ name ^ "!!";;

let () =
    print_endline hello;
    print_endline (hello2 "Tom");;
