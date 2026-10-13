(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    let rec reverse_Loop (input : int list) (k : int) (acc : int list) : int list =
        match input with
        | [] -> acc
        | hd :: tl ->
            if k > 0 then
                reverse_Loop tl (k - 1) (hd :: acc)
            else
                acc
    in
    reverse_Loop input k []

