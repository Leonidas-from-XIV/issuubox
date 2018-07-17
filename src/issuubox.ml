open Base

let main api_key folder =
  Caml.print_endline @@ "API " ^ api_key;
  Caml.print_endline @@ "FOLDER " ^ folder

let () =
  let open Cmdliner in
  let api_key = Arg.(required & pos 0 (some string) None & info ~docv:"API-KEY" []) in
  let folder = Arg.(required & pos 1 (some dir) None & info ~docv:"FOLDER" []) in
  let main_t = Term.(const main $ api_key $ folder) in
  Term.(exit @@ eval (main_t, info "issuubox"))
