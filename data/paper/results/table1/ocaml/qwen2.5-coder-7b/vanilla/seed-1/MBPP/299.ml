let rec max_aggregate (stdata :  (string * int) list) :  string * int = 
  let rec find_max acc = function
    | [] -> acc
    | (x, y)::tl ->
      if y > snd acc then find_max (x, y) tl
      else find_max acc tl
  in find_max ("", 0) stdata


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
