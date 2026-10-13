(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros. *)
let rec decimal_to_binary (n : int) : string = 
    if n = 0 then
        "0"
    else
        let (q, r) = (n / 2, n % 2) in
        if r = 1 then
            "1" ^ decimal_to_binary(q)
        else
            "0" ^ decimal_to_binary(q)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:32: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec decimal_to_binary (n : int) : string = 
    if n = 0 then "0" else
    let (q, r) = n / 2, n % 2 in
    if r = 1 then "1" ^ decimal_to_binary(q) else "0" ^ decimal_to_binary(q)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:27: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec decimal_to_binary (n : int) : string = 
    if n = 0 then "0" else
    let (q, r) = (n / 2, n % 2) in
    if r = 1 then "1" ^ decimal_to_binary(q) else "0" ^ decimal_to_binary(q)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:28: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec decimal_to_binary (n : int) : string = 
    if n = 0 then "0" else
    let (q, r) = (n / 2, n mod 2) in
    if r = 1 then "1" ^ decimal_to_binary(q) else "0" ^ decimal_to_binary(q)

