let rec sum_Of_product (n : int) : int =
  let bionomial_coeff =
    let rec bionomial_calc = fun (n : int) (k : int) ->
      if k = 0 || k = n then 1
      else bionomial_calc n (k-1) * (n-k+1) / k
    in bionomial_calc
  in
  let rec calc_sum = fun (n : int) (k : int) : int =
    if n = 0 then 0
    else bionomial_coeff k (n mod k) * bionomial_coeff (k+1) ((n+1) mod (k+1)) + calc_sum n (k+1)
  in
  calc_sum n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the product of consecutive binomial co-efficients. *)
