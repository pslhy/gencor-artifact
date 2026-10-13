let rec check_Consecutive (l : int list) : bool =
  match l with
  | [] -> true
  | _::[] -> true
  | h::(n::t) -> if h+1 = n then check_Consecutive (n::t) else false

let test = check_Consecutive [1;2;3;4]
let test2 = check_Consecutive [1;3;4;5;7]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list contains consecutive numbers or not. *)
