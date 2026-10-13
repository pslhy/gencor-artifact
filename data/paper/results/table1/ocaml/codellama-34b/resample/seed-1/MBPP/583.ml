(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function which returns nth catalan number. *)
let rec catalan_number (num : int) : int =
    if num <= 1 then 1
    else
        let rec helper (i : int) (acc : int) : int =
            if i >= num then acc
            else helper (i + 1) (acc + catalan_number i) in
        helper 0 0

