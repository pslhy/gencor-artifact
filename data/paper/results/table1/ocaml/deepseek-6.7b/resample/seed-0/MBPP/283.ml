(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
let rec validate (n : int) : bool =
    if n = 0 then true
    else
        let digit = n mod 10 in
        let count = String.length (String.filter ((=) (Char.of_int_code digit)) (string_of_int n)) in
        if count > digit then false
        else
            validate (n / 10)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:36: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec validate (n : int) : bool =
    if n = 0 then true
    else
        let digit = n mod 10 in
        let count = String.length (String.filter ((=) (Char.of_int_code digit)) (string_of_int n)) in
        if count > digit then false
        else
            validate (n / 10)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:36: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec validate (n : int) : bool =
    if n = 0 then true
    else
        let digit = n mod 10 in
        let count = String.length (String.iter ((=) (Char.of_int_code digit)) (string_of_int n)) in
        if count > digit then false
        else
            validate (n / 10)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:54: Unbound value "Char.of_int_code" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec validate (n : int) : bool =
    if n = 0 then true
    else
        let digit = n mod 10 in
        let str = string_of_int n in
        let count = String.length (String.filter ((=) (Char.of_string (string_of_int digit))) str) in
        if count > digit then false
        else
            validate (n / 10)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:36: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec validate (n : int) : bool =
    if n = 0 then true
    else
        let digit = n mod 10 in
        let str = string_of_int n in
        let count = String.length (String.iter ((=) (Char.of_string (string_of_int digit))) str) in
        if count > digit then false
        else
            validate (n / 10)

