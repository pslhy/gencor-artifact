let rec any_int (x : float) (y : float) (z : float) : bool =
  match (x, y, z) with
  | (x, y, z) when x = x + y || y = x + y || z = x + y -> true
  | _ -> false

let%test "any_int_1" = any_int 5 2 7

let%test "any_int_2" = not (any_int 3 2 2)

let%test "any_int_3" = any_int 3 (-2) 1

let%test "any_int_4" = not (any_int 3.6 -2.2 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function that takes 3 numbers. *)
(*     Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers. *)
(*     Returns false in any other cases. *)
(*     Examples *)
(*     >>> any_int 5 2 7 *)
(*     true *)
(*     >>> any_int 3 2 2 *)
(*     false *)
(*     >>> any_int 3 (-2) 1 *)
(*     true *)
(*     >>> any_int 3.6 -2.2 2 *)
(*     false *)
