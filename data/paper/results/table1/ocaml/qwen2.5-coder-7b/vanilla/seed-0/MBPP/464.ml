let rec check_value (dict : (string * int) list) (n : int) : bool = 
  match dict with
  | [] -> true
  | (key, value)::rest -> if value = n then check_value rest n else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if all values are same in an association list. *)
