let rec is_Diff (n : int) : bool = 
    let rec diff (n : int) (sum_even : int) (sum_odd : int) : int =
        if n = 0 then sum_even - sum_odd
        else diff (n / 10) (sum_even + (n mod 10) * if (n mod 100 / 10) mod 2 = 0 then 1 else -1) (sum_odd + (n mod 10) * if (n mod 100 / 10) mod 2 <> 0 then 1 else -1)
    in
    if diff n 0 0 mod 11 = 0 then true else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether a number is divisible by 11. *)
