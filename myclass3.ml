class virtual device =
  object
    method virtual play : unit
    method virtual stop : unit
  end

class cd_player cd =
  object
    inherit device
    val cd = cd
    method play = Printf.printf "CD: %s\n" cd
    method stop = Printf.printf "CD Player stopped.\n"
  end

class dvd_player dvd =
  object
    inherit device
    val dvd = dvd
    method play = Printf.printf "DVD: %s\n" dvd
    method stop = Printf.printf "DVD Player stopped\n"
  end

let () =
  let c = new cd_player "Buena Vista Social Club" in
  let d = new dvd_player "Forrest Gump" in
  c#play;
  c#stop;
  d#play;
  d#stop;;
