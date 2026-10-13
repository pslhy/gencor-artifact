let rec smallest_change (arr : int list) : int =
  let rec helper (acc : int) (left : int list) (right : int list) : int =
    match left, right with
    | [], _ -> acc
    | _, [] -> acc
    | x::xs, y::ys when x = y -> helper acc xs ys
    | x::xs, y::ys -> helper (acc + 1) xs ys
  in
  helper 0 (List.rev arr) (List.tl (List.rev arr))
  
let res1 = smallest_change [1; 2; 3; 5; 4; 7; 9; 6]
let res2 = smallest_change [1; 2; 3; 4; 3; 2; 2]
let res3 = smallest_change [1; 2; 3; 2; 1] 

print_int res1; print_newline();
print_int res2; print_newline();
print_int res3; print_newline();


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
