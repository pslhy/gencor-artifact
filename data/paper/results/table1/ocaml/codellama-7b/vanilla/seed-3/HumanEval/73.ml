let rec smallest_change (arr : int list) : int =
  if List.length arr <= 1 then
    0
  else if List.mem arr.(0) arr.(List.length arr - 1) then
    smallest_change (List.tl arr)
  else
    min (1 + smallest_change (List.tl arr)) (1 + smallest_change (List.tl (List.rev arr)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list arr of integers, find the minimum number of elements that *)
(*     need to be changed to make the list palindromic. A palindromic list is a list that *)
(*     is read the same backwards and forwards. In one change, you can change one element to any other element. *)
(*     For example: *)
(*     >>> smallest_change [1; 2; 3; 5; 4; 7; 9; 6] *)
(*     4 *)
(*     >>> smallest_change [1; 2; 3; 4; 3; 2; 2] *)
(*     1 *)
(*     >>> smallest_change [1; 2; 3; 2; 1] *)
(*     0 *)
