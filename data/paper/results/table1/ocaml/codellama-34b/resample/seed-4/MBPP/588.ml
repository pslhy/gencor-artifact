(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
let rec big_diff (nums : int list) : int = 
    (* base case: empty list with smallest and largest value 0 *)
    let rec helper (nums : int list) (vmin: int) (vmax: int) : int =
        match nums with
        | [] -> vmax - vmin
        | hd :: tl ->
            let vmin' = min vmin hd in
            let vmax' = max vmax hd in
            helper tl vmin' vmax'
    in
    helper nums Int.min_int Int.max_int

