(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
let rec even_binomial_Coeff_Sum (n : int) : int =
    let rec aux (k : int) (acc : int) : int =
        if k > n then
            acc
        else
            aux (k + 1) (acc + k % 2)
    
    in
    aux 0 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:34: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_binomial_Coeff_Sum (n : int) : int =
    let rec aux (k : int) (acc : int) : int =
        if k > n then
            acc
        else
            aux (k + 1) (acc + if k % 2 = 0 then 1 else 0)
    
    in
    aux 0 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:37: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_binomial_Coeff_Sum (n : int) : int =
    let rec aux (k : int) (acc : int) : int =
        if k > n then
            acc
        else
            aux (k + 1) (acc + if k mod 2 = 0 then 1 else 0)
    
    in
    aux 0 0

