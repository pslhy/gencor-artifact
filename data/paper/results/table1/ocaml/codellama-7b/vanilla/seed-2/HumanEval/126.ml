let rec is_sorted (lst : int list) : bool =
  match lst with
  | [] | [_] -> true
  | h :: t ->
    if h > List.hd t then is_sorted t
    else if List.count lst h > 1 then false
    else is_sorted t

let () =
  print_bool (is_sorted [5]) ;
  print_bool (is_sorted [1; 2; 3; 4; 5]) ;
  print_bool (is_sorted [1; 3; 2; 4; 5]) ;
  print_bool (is_sorted [1; 2; 3; 4; 5; 6]) ;
  print_bool (is_sorted [1; 2; 3; 4; 5; 6; 7]) ;
  print_bool (is_sorted [1; 3; 2; 4; 5; 6; 7]) ;
  print_bool (is_sorted [1; 2; 2; 3; 3; 4]) ;
  print_bool (is_sorted [1; 2; 2; 2; 3; 4])


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
