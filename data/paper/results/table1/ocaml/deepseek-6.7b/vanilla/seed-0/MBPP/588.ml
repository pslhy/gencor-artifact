let rec big_diff (nums : int list) : int =
    let rec min_max (nums : int list) (min : int) (max : int) : int * int =
        match nums with
        | []         -> min, max
        | x :: xs -> if x < min
                      then min_max xs x max
                      else if x > max
                           then min_max xs min x
                           else min_max xs min max
    in
    let min, max = min_max nums (List.hd nums) (-1) in
    max - min


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
