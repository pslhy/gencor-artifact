let rec choose_num (x : int) (y : int) : int =
  if y < x then
    -1
  else if y mod 2 = 0 then
    y
  else
    choose_num x (y - 1)


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
