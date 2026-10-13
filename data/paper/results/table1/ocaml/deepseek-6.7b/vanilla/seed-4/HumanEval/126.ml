let rec is_sorted (lst : int list) : bool =
  match lst with
  | [] -> true
  | _::[] -> true
  | x1::x2::xss -> if x1 >= x2 then is_sorted (x2::xss) else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of numbers, return whether or not they are sorted *)
(*     in ascending order. If list has more than 1 duplicate of the same *)
(*     number, return false. Assume no negative numbers and only integers. *)
(*     Examples *)
(*     >>> is_sorted [5] *)
(*     true *)
(*     >>> is_sorted [1; 2; 3; 4; 5] *)
(*     true *)
(*     >>> is_sorted [1; 3; 2; 4; 5] *)
(*     false *)
(*     >>> is_sorted [1; 2; 3; 4; 5; 6] *)
(*     true *)
(*     >>> is_sorted [1; 2; 3; 4; 5; 6; 7] *)
(*     true *)
(*     >>> is_sorted [1; 3; 2; 4; 5; 6; 7] *)
(*     false *)
(*     >>> is_sorted [1; 2; 2; 3; 3; 4] *)
(*     true *)
(*     >>> is_sorted [1; 2; 2; 2; 3; 4] *)
(*     false *)
