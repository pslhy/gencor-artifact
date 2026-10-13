
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
    if a = b then true
    else if a && (a - 1) > 0 then
        if b && (b - 1) > 0 then
            differ_At_One_Bit_Pos (a && (a - 1)) (b && (b - 1))
        else
            false
    else if b && (b - 1) > 0 then
        if a && (a - 1) > 0 then
            differ_At_One_Bit_Pos (a && (a - 1)) (b && (b - 1))
        else
            false
    else
        false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
