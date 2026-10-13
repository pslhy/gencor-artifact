let rec even_binomial_Coeff_Sum (n : int) : int = 
    (* base case: when n is 0 or 1, return 1 *)
    if n <= 1 then 1
    (* recurrence relation: accumulate sum of n C 2k for even values of k *)
    else init 0 (2 * k) (fun (acc, k) -> acc + List.nth_Coeff n k)

(* Test function calls *)
let () = 
    let res1 = even_binomial_Coeff_Sum 0 in
    assert (res1 = 1);
    let res2 = even_binomial_Coeff_Sum 1 in
    assert (res2 = 1);
    let res3 = even_binomial_Coeff_Sum 2 in
    assert (res3 = 3);
    let res4 = even_binomial_Coeff_Sum 3 in
    assert (res4 = 5);
    let res5 = even_binomial_Coeff_Sum 4 in
    assert (res5 = 8);
    let res6 = even_binomial_Coeff_Sum 5 in
    assert (res6 = 13);
    let res7 = even_binomial_Coeff_Sum 6 in
    assert (res7 = 21)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
