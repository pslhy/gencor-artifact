let rec divisor (n : int) : int =
    match n with
    | 0 | 1 -> 2
    | _ ->
        let x = divisor (n / 2) in
        if n mod 2 = 0 then
            x + 2
        else
            x + 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of divisors of a given integer. *)
