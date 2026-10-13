(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
let rec max_Abs_Diff (arr : int list) : int =
    let rec aux (acc : int * int) (x : int) : int * int =
        if abs (fst acc - x) > abs (snd acc - x) then abs (fst acc - x) else abs (snd acc - x)
    in
    List.fold_left aux (0, 0) arr

