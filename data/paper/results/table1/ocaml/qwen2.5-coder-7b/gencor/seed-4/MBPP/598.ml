
let rec armstrong_number (number : int) : bool = 
  let digits = 
    let rec collect n acc = 
      if n = 0 then acc 
      else collect (n / 10) (n mod 10 :: acc) 
    in collect number [] 
  in 
  let num_digits = List.length digits in 
  let sum_of_powers = 
    List.fold_left (fun acc d -> acc + (int_of_float (pred (float_of_int num_digits))) *. d *. d *. d) 0 digits 
  in 
  sum_of_powers = number

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
