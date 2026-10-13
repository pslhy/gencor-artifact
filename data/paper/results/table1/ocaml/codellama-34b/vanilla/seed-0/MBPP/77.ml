let rec is_Diff (n : int) : bool =
    if n < 2 then
        true
    else
        let (d, r) = (n/2, n mod 2) in
        if r = 0 then
            is_Diff d
        else
            not (is_Diff d)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether a number is divisible by 11. *)
