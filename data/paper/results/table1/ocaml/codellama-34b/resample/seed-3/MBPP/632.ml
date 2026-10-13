(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to move all zeroes to the end of the given list. *)
let rec move_zero (num_list : int list) : int list =
  match num_list with
  | [] -> []
  | head :: tail ->
      if head = 0 then move_zero tail @ [0]
      else head :: (move_zero tail)

