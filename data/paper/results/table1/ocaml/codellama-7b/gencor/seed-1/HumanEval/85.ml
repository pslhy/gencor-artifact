
let rec add (lst : int list) : int =
match lst with
| [] -> 0
| h :: t -> let rec aux (lst : int list) : int =
  match lst with
  | [] -> 0
  | h :: t -> if h mod 2 = 0 && (h - 1) mod 2 = 1 then h + aux t else aux t

in aux lst

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a non-empty list of integers lst. add the even elements that are at odd indices.. *)
(*     Examples: *)
(*     >>> add [4; 2; 6; 7] *)
(*     2 *)
