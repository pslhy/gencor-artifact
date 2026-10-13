let rec odd_Equivalent (s : string) (n : int) : int =
    if n = 0 then 0
    else if s = "" then 0
    else (
        let rotate = (n mod String.length s)
        if rotate = 0 then odd_Equivalent (s^s) (n-1)
        else (
            let (rotated, _) = String.split_at s rotate
            (if rotated = "" then 0 else 1) + odd_Equivalent (s^rotated) (n-1)
        )


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
