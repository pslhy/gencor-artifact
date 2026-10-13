let rec max_aggregate (stdata :  (string * int) list) :  string * int =
  match stdata with
  | [] -> ("", 0)
  | (n, v)::tail ->
     let (max_name, max_value) = max_aggregate tail in
     if v >= max_value then (n, v) else (max_name, max_value)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
