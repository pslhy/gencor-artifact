(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that returns true if the given number is the multiplication of 3 prime numbers *)
(*     and false otherwise. *)
(*     Knowing that (a) is less then 100. *)
(*     Example: *)
(*     >>> is_multiply_prime 30 *)
(*     true *)
(*     30 = 2 * 3 * 5 *)
let rec is_multiply_prime (a : int) : bool =
    if a < 100 then
        false
    else
        let divisors = [2; 3; 5; 7; 11; 13; 17; 19; 23; 29; 31; 37; 41; 43; 47; 53; 59; 61; 67; 71; 73; 79; 83; 89; 97]
        let result = divisors |> List.fold (fun acc x -> if a mod x = 0 then acc && x else false) true
        in
        if result then true else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_multiply_prime (a : int) : bool =
    if a < 100 then
        false
    else
        let divisors = [2; 3; 5; 7; 11; 13; 17; 19; 23; 29; 31; 37; 41; 43; 47; 53; 59; 61; 67; 71; 73; 79; 83; 89; 97] in
        let result = divisors |> List.fold (fun acc x -> if a mod x = 0 then acc && x else false) true in
        if result then true else false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:34: Unbound value "List.fold" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_multiply_prime (a : int) : bool =
    if a < 100 then
        false
    else
        let divisors = [2; 3; 5; 7; 11; 13; 17; 19; 23; 29; 31; 37; 41; 43; 47; 53; 59; 61; 67; 71; 73; 79; 83; 89; 97] in
        let result = List.fold (fun acc x -> if a mod x = 0 then acc && x else false) true divisors in
        if result then true else false

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:22: Unbound value "List.fold" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_multiply_prime (a : int) : bool =
    if a < 100 then
        false
    else
        let divisors = [2; 3; 5; 7; 11; 13; 17; 19; 23; 29; 31; 37; 41; 43; 47; 53; 59; 61; 67; 71; 73; 79; 83; 89; 97] in
        let result = List.fold_left (fun acc x -> if a mod x = 0 then acc && x else false) true divisors in
        if result then true else false

