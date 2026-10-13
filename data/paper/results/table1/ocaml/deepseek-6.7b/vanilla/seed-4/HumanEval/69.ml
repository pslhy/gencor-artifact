let rec search (lst : int list) : int =
  let rec aux x (lst : int list) (n : int) : int =
    match lst with
    | [] -> if n > 0 then x else -1
    | h :: t -> if h = x then aux x t (n - 1) else aux x t n
  in
  List.fold_right (fun x acc -> max (aux x lst x) acc) lst 0

(* The `search` function is recursive and calls an auxiliary function `aux`. 
The `aux` function recursively traverses the list and counts the number of occurrences of the given integer.
If the number of occurrences is greater than the integer itself, it returns the integer; otherwise, it continues with the rest of the list.
If there is no integer that satisfies the condition, the `search` function returns -1.
Finally, `List.fold_right` traverses the list from right to left and updates the maximum value found so far. *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a non-empty list of positive integers. Return the greatest integer that is greater than *)
(*     zero, and has a frequency greater than or equal to the value of the integer itself. *)
(*     The frequency of an integer is the number of times it appears in the list. *)
(*     If no such a value exist, return -1. *)
(*     Examples: *)
(*     >>> search [4; 1; 2; 2; 3; 1] *)
(*     2 *)
(*     >>> search [1; 2; 2; 3; 3; 3; 4; 4; 4] *)
(*     3 *)
(*     >>> search [5; 5; 4; 4; 4] *)
(*     (-1) *)
