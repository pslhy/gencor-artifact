let rec even_binomial_Coeff_Sum (n : int) : int =
  match n with
  | 0 -> 0
  | _ ->
    let rec calc_Coeff (nth_term : int) (term : float) (mult_val : float) : float =
      if nth_term < 0 then
        term
      else
        calc_Coeff (nth_term - 1) (term +. (term *. mult_val)) (mult_val /. (float_of_int nth_term))
    in
    let rec calc_mult_val (mult : float) : float = 
      if mult < float_of_int n then
        mult *. (1.0 -. mult)
      else
        1.0
    in
    int_of_float (calc_Coeff n 1.0 (calc_mult_val 0.5)) + even_binomial_Coeff_Sum (n-1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
