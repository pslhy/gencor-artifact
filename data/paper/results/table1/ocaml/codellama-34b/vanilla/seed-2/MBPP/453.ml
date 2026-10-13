let rec sumofFactors (n : int) : int =
    match n with
    | 0 | 1 -> 0
    | _ ->
        let x = n / 2 in
        if x mod 2 = 0 then
            x + sumofFactors(x)
        else
            x + sumofFactors(x + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even factors of a number. *)
