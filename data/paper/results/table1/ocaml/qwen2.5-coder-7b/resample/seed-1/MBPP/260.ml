(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
let rec newman_prime (n : int) : int = 
  let rec is_prime num div = 
    if div * div > num then true
    else if num mod div = 0 then false
    else is_prime num (div + 1)
  in
  let rec newman_sequence k = 
    if k = 0 then 0
    else if k = 1 then 1
    else (newman_sequence (k - 1)) * (newman_sequence (k - 2)) + 2
  in
  let rec count = ref 0 
  and candidate = ref 1 
  in
  while !count < n do
    candidate := !candidate + 2;
    if is_prime !candidate (Int.sqrt !candidate) then begin
      let ns_number = newman_sequence (!candidate - 1) in
      if is_prime ns_number (Int.sqrt ns_number) then (
        incr count;
      )
    end
  done;
  !candidate

let nth_newman_prime n = 
  newman_prime (n - 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:29: Unbound value "Int.sqrt" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec newman_prime (n : int) : int = 
  let rec is_prime num div = 
    if div * div > num then true
    else if num mod div = 0 then false
    else is_prime num (div + 1)
  in
  let rec newman_sequence k = 
    if k = 0 then 0
    else if k = 1 then 1
    else (newman_sequence (k - 1)) * (newman_sequence (k - 2)) + 2
  in
  let rec count = ref 0 
  and candidate = ref 1 
  in
  while !count < n do
    candidate := !candidate + 2;
    if is_prime !candidate (int_of_float (sqrt (float_of_int !candidate))) then begin
      let ns_number = newman_sequence (!candidate - 1) in
      if is_prime ns_number (int_of_float (sqrt (float_of_int ns_number))) then (
        incr count;
      )
    end
  done;
  !candidate

let nth_newman_prime n = 
  newman_prime (n - 1)

