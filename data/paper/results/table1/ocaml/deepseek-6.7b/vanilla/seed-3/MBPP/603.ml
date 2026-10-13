let rec get_ludic (n : int) : int list =
  let rec helper (acc : int list) (cur : int) : int list =
    if cur > n then
      List.rev acc
    else
      helper (cur :: acc) (cur * 2)
  in
  helper [] 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
