let rec sort_array (array : int list) : int list =
match array with
| [] -> []
| [x] -> [x]
| x::y::tl ->
  let sum = x + y in
  if sum mod 2 = 0 then
    y :: sort_array (x :: tl)
  else
    x :: sort_array (y :: tl)
;;



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of non-negative integers, return a coml of the given list after sorting, *)
(*     you will sort the given list in ascending order if the sum( first index value, last index value) is odd, *)
(*     or sort it in descending order if the sum( first index value, last index value) is even. *)
(*     Note: *)
(*     * don't change the given list. *)
(*     Examples: *)
(*     >>> sort_array [] *)
(*     [] *)
(*     >>> sort_array [5] *)
(*     [5] *)
(*     >>> sort_array [2; 4; 3; 0; 1; 5] *)
(*     [0; 1; 2; 3; 4; 5] *)
(*     >>> sort_array [2; 4; 3; 0; 1; 5; 6] *)
(*     [6; 5; 4; 3; 2; 1; 0] *)
