let rec max_Abs_Diff (arr : int list) : int =
  let rec helper (arr : int list) : int * int * int =
    match arr with
    | [] -> max_int, min_int, 0
    | x :: xs ->
       let a, b, c = helper xs in
       (max a x, min b x, max c (abs (a - x)))
  in
  let _, _, diff = helper arr in
  diff


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
