(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
    if a = b then true
    else if a &&& 1 = b &&& 1 then
        differ_At_One_Bit_Pos (a >>> 1) (b >>> 1)
    else
        false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:25: Unbound value "(&&&)" *)
(*     Hint: Did you mean "&&"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
    if a = b then true
    else if a && b then
        differ_At_One_Bit_Pos (a >>> 1) (b >>> 1)
    else
        false

