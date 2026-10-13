let rec get_ludic (n : int) : int list =
  if n = 1 then
    [1]
  else
    match n with
    | n when n mod 2 = 0 ->
      let smaller_lucid = get_ludic (n / 2) in
      smaller_lucid @ (List.hd smaller_lucid + 1) :: List.tl smaller_lucid
    | n ->
      let smaller_lucid = get_ludic (n / 2) in
      smaller_lucid @ (List.hd smaller_lucid + 2) :: List.tl smaller_lucid


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
