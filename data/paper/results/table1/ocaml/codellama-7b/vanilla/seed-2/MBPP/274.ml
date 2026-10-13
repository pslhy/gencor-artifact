let rec even_binomial_Coeff_Sum (n : int) : int =
    match n with
    | 0 | 1 -> 0
    | _ ->
        let x = n - 1 in
        let y = x / 2 in
        let z = n - y in
        2 * y * z / x + even_binomial_Coeff_Sum (n - 2)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
