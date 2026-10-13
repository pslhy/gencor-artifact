(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a positive integer N, return the total sum of its digits in binary. *)
(*     Example *)
(*     >>> solve 1000 *)
(*     "1" *)
(*     >>> solve 150 *)
(*     "110" *)
(*     >>> solve 147 *)
(*     "1100" *)
(*     Variables: *)
(*     @N integer *)
(*     Constraints: 0 ≤ N ≤ 10000. *)
(*     Output: *)
(*     a string of binary number *)
let rec solve (n : int) : string = 
    let ( << ) a b = a * 2 + b in
    let ( ||| ) a b = a || b in
    let rec sum n accum = 
        if n = 0 then
            accum
        else
            let bit = n mod 2 = 1 in
            let n = n >>> 1 in
            sum n (accum ||| bit) in
    match sum n 0 with 
    | n -> string_of_int n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:23: Unbound value "(>>>)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (n : int) : string =
    let bit = n mod 2 = 1 in
    let n = n lsr 1 in
    if n = 0 then
        if bit then "1" else "0"
    else
        let rest = solve n in
        if bit then "1" ^ rest else "0" ^ rest

# truth table for raising 2 to the power of n
let tt = solve 4;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:15: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (n : int) : string =
    let bit = n mod 2 = 1 in
    let n = n lsr 1 in
    if n = 0 then
        if bit then "1" else "0"
    else
        let rest = solve n in
        if bit then "1" ^ rest else "0" ^ rest;;

# truth table for raising 2 to the power of n
let tt = solve 4;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (n : int) : string =
    let bit = n mod 2 = 1 in
    let n = n lsr 1 in
    if n = 0 then
        if bit then "1" else "0"
    else
        let rest = solve n in
        if bit then "1" ^ rest else "0" ^ rest

