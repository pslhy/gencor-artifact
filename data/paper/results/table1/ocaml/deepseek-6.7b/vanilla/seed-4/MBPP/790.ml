let rec even_position (nums : int list) : bool =
  match nums with
  | [] -> true
  | _::[] -> false
  | x1::x2::xss when x1 mod 2 <> 0 -> false 
  | x1::x2::xss -> even_position (x2::xss);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every even index contains even numbers of a given list. *)
