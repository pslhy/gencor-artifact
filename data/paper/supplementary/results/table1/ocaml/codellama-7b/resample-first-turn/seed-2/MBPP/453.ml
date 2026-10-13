let rec sumofFactors (n : int) : int =
    match n with
    | 0 | 1 -> 0
    | _ ->
        let factors = List.filter (fun x -> x mod 2 = 0) (List.range 1 n)
        List.sum factors

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even factors of a number. *)
