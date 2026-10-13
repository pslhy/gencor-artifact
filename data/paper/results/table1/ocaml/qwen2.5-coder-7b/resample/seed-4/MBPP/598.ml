(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
let rec armstrong_number (number : int) : bool = 
  let digits = 
    let rec collect n acc = 
      if n = 0 then acc 
      else collect (n / 10) (n mod 10 :: acc) 
    in collect number [] 
  in 
  let num_digits = List.length digits in 
  let sum_of_powers = 
    List.fold_left (fun acc d -> acc + (int_of_float (pown (float d) num_digits))) 0 digits 
  in 
  number = sum_of_powers

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:55: Unbound value "pown" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool = 
  let digits = 
    let rec collect n acc = 
      if n = 0 then acc 
      else collect (n / 10) (n mod 10 :: acc) 
    in collect number [] 
  in 
  let num_digits = List.length digits in 
  let sum_of_powers = 
    List.fold_left (fun acc d -> acc + (int_of_float (Float.pow (float d) num_digits))) 0 digits 
  in 
  number = sum_of_powers

