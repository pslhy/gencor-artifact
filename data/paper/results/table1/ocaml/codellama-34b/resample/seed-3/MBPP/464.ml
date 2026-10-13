(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if all values are same in an association list. *)
let rec check_value (dict : (string * int) list) (n : int) : bool =
  if dict = [] then true
  else
    (if List.hd dict != n then false else check_value (List.tl dict) n)

