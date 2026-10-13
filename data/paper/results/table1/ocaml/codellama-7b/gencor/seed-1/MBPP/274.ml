
let rec even_binomial_Coeff_Sum (n : int) : int =
    let rec aux (k : int) (acc : int) : int =
        if k > n then
            acc
        else
            aux (k + 1) (acc + k * (k + 1))
    in
    aux 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
