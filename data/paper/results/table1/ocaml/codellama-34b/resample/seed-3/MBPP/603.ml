(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
let rec get_ludic (n : int) : int list =
  if n < 2 then
    []
  else if n = 2 then
    [2]
  else
    let rec inner acc x xs =
      if List.length xs <= x then
        acc
      else if List.hd xs <> x then
        inner acc (x + 1) xs
      else
        inner (acc @ [x]) (x + 1) xs
    in
    inner [] 2 (get_ludic (n - 1))
;;

