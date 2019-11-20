let rec hanoi n a b c =
  if n > 0 then
    begin
      hanoi (n - 1) a c b;
      Printf.printf "%c => %c\n" a c;
      hanoi (n - 1) b a c
    end;;

let () =
  hanoi 3 'A' 'B' 'C';;
