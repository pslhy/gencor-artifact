let rec is_sorted (lst : int list) : bool = 
  let rec check_duplicates seen = function
    | [] -> true
    | h::t ->
      if List.mem h seen then false else check_duplicates (h::seen) t
  in
  let rec check_sorted = function
    | [] | [_] -> true
    | h1::h2::t -> h1 <= h2 && check_sorted (h2::t)
  in
  check_sorted lst && check_duplicates [] lst


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
