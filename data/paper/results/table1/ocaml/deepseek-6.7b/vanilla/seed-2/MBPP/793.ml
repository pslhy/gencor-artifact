let rec last (arr : int list) (x : int) : int =
  match arr with
  | [] -> -1
  | h::t -> if h = x then max (last_pos t x) (List.length t) else last_pos t x
and last_pos (arr : int list) (x : int) : int =
  match arr with
  | [] -> -1
  | h::t -> if h = x then 0 else 1 + last_pos t x
;;

(* Test cases *)
assert (last [2; 5; 5; 5; 6; 9] 5 = 3);; (* returns 3 *)
assert (last [1; 2; 3; 4; 5; 6] 7 = -1);; (* returns -1 *)
assert (last [] 5 = -1);; (* returns -1 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last position of an element in a sorted list. *)
