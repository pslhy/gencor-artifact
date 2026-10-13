let rec is_multiply_prime (a : int) : bool = 
  let rec is_prime (n : int) : bool = 
    if n <= 1 then false
    else if n <= 3 then true
    else if n mod 2 = 0 || n mod 3 = 0 then false
    else
      let rec check_divisor (d : int) : bool = 
        if d * d > n then true
        else if n mod d = 0 then false
        else check_divisor (d + 6)
      in check_divisor 5
  in

  let rec count_factors (n : int) (factor : int) (count : int) : int = 
    if n mod factor = 0 then count_factors (n / factor) factor (count + 1)
    else if is_prime factor then count
    else count_factors n (factor + 1) count
  in

  let count = count_factors a 2 0 in
  count = 3 && a < 100


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns true if the given number is the multiplication of 3 prime numbers *)
(*     and false otherwise. *)
(*     Knowing that (a) is less then 100. *)
(*     Example: *)
(*     >>> is_multiply_prime 30 *)
(*     true *)
(*     30 = 2 * 3 * 5 *)
