(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power. *)
let rec power_base_sum (base : int) (power : int) : int =
  let sum = ref 0 in
  for i = 0 to power do
    sum := !sum + base;
  done;
  !sum

let main () =
  let base = 10 in
  let power = 3 in
  let result = power_base_sum base power in
  Printf.printf "Sum of all digits of %d to the power of %d is %d\n" base power result;

main ()

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:1: Unbound value "main" *)
(*     Hint: Did you mean "min"? *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 8 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec power_base_sum (base : int) (power : int) : int =
    let rec min = (base * min) + 1 in
    if power = 0 then 
        0 
    else 
        min in

let main () =
    let base = 10 in
    let power = 3 in
    let result = power_base_sum base power in
    Printf.printf "Sum of all digits of %d to the power of %d is %d\n" base power result;

module.exports = main

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec power_base_sum (base : int) (power : int) : int =
  let rec min = (base * min) + 1 in
  if power = 0 then
    0
  else
    min

let main () =
  let base = 10 in
  let power = 3 in
  let result = power_base_sum base power in
  Printf.printf "Sum of all digits of %d to the power of %d is %d\n" base power result;

module.exports = main

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec power_base_sum (base : int) (power : int) : int =
  let rec min = (base * min) + 1 in
  if power = 0 then
    0
  else
    min

let main () =
  let base = 10 in
  let power = 3 in
  let result = power_base_sum base power in
  Printf.printf "Sum of all digits of %d to the power of %d is %d\n" base power result;

module.exports = main

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec power_base_sum (base : int) (power : int) : int =
  match power with
  | 1 -> base
  | 2 -> base * base
  | 3 -> base * base * base
  | _ -> power_base_sum (base * base) power

let main () =
  let base = 10 in
  let power = 3 in
  let result = power_base_sum base power in
  Printf.printf "Sum of all digits of %d to the power of %d is %d\n" base power result

module.exports = main

