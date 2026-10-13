let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
    let mask = 1 in
    let rec loop a b i =
        if i = 32 then
            false
        else if a land (mask lsl i) <> b land (mask lsl i) then
            true
        else
            loop a b (i + 1)
    in
    if a = b then
        false
    else
        loop a b 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
