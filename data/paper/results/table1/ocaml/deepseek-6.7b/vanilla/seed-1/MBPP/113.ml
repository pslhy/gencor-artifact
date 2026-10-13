let rec check_integer (text : string) : bool =
  match text with
  | "" -> false
  | "-" -> false
  | "+" -> false
  | _ -> check_digits 1 (String.length text) text
and check_digits start len text =
  if start = len then true
  else if text.[start] < '0' || text.[start] > '9' then false
  else check_digits (start+1) len text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
