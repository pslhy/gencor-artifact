(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
let rec even_binomial_Coeff_Sum (n : int) : int =
  let bionomial_Coeff (n : int) (k : int) : int =
    let rec fact x acc = if x = 0 then acc else fact (x - 1) (x * acc) in
    fact n 1 // fact (n - k) 1 // fact k 1
  in
  let rec loop (n : int) (i : int) (sum : int) : int =
    if i > n then sum
    else
      let even_index_coeff = if i mod 2 = 0 then bionomial_Coeff n i else 0 in
      loop n (i + 1) (sum + even_index_coeff)
  in
  loop n 0 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:32: Unbound value "(//)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_binomial_Coeff_Sum (n : int) : int =
  let bionomial_Coeff (n : int) (k : int) : int =
    let rec fact x acc = if x = 0 then acc else fact (x - 1) (x * acc) in
    fact n / fact (n - k) / fact k
  in
  let rec loop (n : int) (i : int) (sum : int) : int =
    if i > n then sum
    else
      let even_index_coeff = if i mod 2 = 0 then bionomial_Coeff n i else 0 in
      loop n (i + 1) (sum + even_index_coeff)
  in
  loop n 0 0

