let rec max_aggregate (stdata :  (string * int) list) :  string * int =
  match stdata with
  | [] -> ("", 0) (* return an empty string and 0 when the list is empty *)
  | (name, value)::[] -> (name, value) (* return the only element in the list *)
  | (name, value)::rest ->
      let (max_name, max_value) = max_aggregate rest in
      if value > max_value then (name, value) else (max_name, max_value) (* Compare with the next element *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
