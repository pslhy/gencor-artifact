(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
let rec armstrong_number (number : int) : bool = 
    let rec sum_of_powers (n : int) (power : int) (acc : int) : int = 
        if n = 0 then acc 
        else sum_of_powers (n / 10) power (acc + (int_of_float (pow (float (n mod 10)) (float power))))
    in
    let digits = int_of_float (log10 (float number)) + 1 in
    armstrong_number_helper number digits

and armstrong_number_helper (n : int) (power : int) : bool = 
    if n = 0 then true 
    else sum_of_powers n power 0 = n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:65: Unbound value "pow" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool = 
    let rec sum_of_powers (n : int) (power : int) (acc : int) : int = 
        if n = 0 then acc 
        else sum_of_powers (n / 10) power (acc + (int_of_float (Printf.sprintf "%.0f" (Float.pow (float (n mod 10)) (float power)))))
    in
    let digits = int_of_float (log10 (float number)) + 1 in
    armstrong_number_helper number digits

and armstrong_number_helper (n : int) (power : int) : bool = 
    if n = 0 then true 
    else sum_of_powers n power 0 = n

