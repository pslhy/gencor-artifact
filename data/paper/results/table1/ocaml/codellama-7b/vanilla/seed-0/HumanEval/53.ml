let rec add (x : int) (y : int) : int =
  if x = 0 then y else add (x - 1) (y + 1)

;;
add 5 7;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Add two numbers x and y *)
(*     >>> add 2 3 *)
(*     5 *)
(*     >>> add 5 7 *)
(*     12 *)
