let rec max_aggregate (stdata :  (string * int) list) :  string * int = 
  let rec helper remaining_list current_max =
    match remaining_list with
    | [] -> current_max
    | (key, value) :: rest ->
        let new_max = if value > snd current_max then (key, value) else current_max in
        helper rest new_max
  in
  helper stdata ("", min_int)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
