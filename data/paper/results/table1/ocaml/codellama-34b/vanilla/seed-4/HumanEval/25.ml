let rec factorize (n : int) : int list = 
    let rec helpFactorize (n : int) (factors : int list) : int list =
        match n with
        | 1 -> factors
        | _ -> 
            let (newN, newFactors) = divideFactor(n)
            helpFactorize newN (newFactors :: factors)
    in helpFactorize n []

let rec divideFactor(n:int) = 
    if n mod 2 = 0 Then
      (n / 2, 2)
    else if n mod 3 = 0 Then
      (n / 3, 3)
    else if n mod 5 = 0 Then
      (n / 5, 5)
    else
      (n, 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return list of prime factors of given integer in the order from smallest to largest. *)
(*     Each of the factors should be listed number of times corresponding to how many times it appeares in factorization. *)
(*     Input number should be equal to the product of all factors *)
(*     >>> factorize 8 *)
(*     [2; 2; 2] *)
(*     >>> factorize 25 *)
(*     [5; 5] *)
(*     >>> factorize 70 *)
(*     [2; 5; 7] *)
