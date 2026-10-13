let rec choose_num (x : int) (y : int) : int =
match x, y with
| x, y when x mod 2 = 0 -> if x > y then -1 else x
| _, _ -> let mid = (x + y) / 2 in
match choose_num x mid, choose_num y mid with
| -1, -1 -> -1
| _, -1 -> choose_num mid y
| -1, _ -> choose_num x mid
| x', y' -> if x' > y' then -1 else y'


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     This function takes two positive numbers x and y and returns the *)
(*     biggest even integer number that is in the range [x, y] inclusive. If *)
(*     there's no such number, then the function should return -1. *)
(*     For example: *)
(*     >>> choose_num 12 15 *)
(*     14 *)
(*     >>> choose_num 13 12 *)
(*     (-1) *)
