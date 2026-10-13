let rec get_coordinates (test_tup :  int * int) : int list list =
match test_tup with
| (a, b) -> [[a], [b]]
| ((a, b), (c, d)) -> [[a, c], [b, d]]
| ((a, b), (c, d), (e, f)) -> [[a, c, e], [b, d, f]]
| _ -> []
in

let test_tuple = (3, 4);;

get_coordinates test_tuple;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract all the adjacent coordinates of the given coordinate tuple. *)
