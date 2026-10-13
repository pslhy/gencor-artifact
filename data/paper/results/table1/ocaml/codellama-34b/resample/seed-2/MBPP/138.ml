(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as sum of non-zero powers of 2 or not. *)
let rec is_Sum_Of_Powers_Of_Two (n : int) : bool =
    match n with
    | 0 -> false
    | 1 -> true
    | _ -> is_Sum_Of_Powers_Of_Two (n - 1) || is_Sum_Of_Powers_Of_Two (n - 2)

