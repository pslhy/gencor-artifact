let rec max_aggregate (stdata :  (string * int) list) :  string * int =
  match stdata with
  | [] ->
      "", 0
  | (x, y) :: t ->
      let (a, b) = max_aggregate t in
      if y > b then (x, y) else (a, b)

let () =
  let stdata = [("Aa", 10); ("Bb", 20); ("Cc", 30)] in
  let (name, value) = max_aggregate stdata in
  Printf.printf "%s %d\n" name value

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
