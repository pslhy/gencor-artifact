(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13. *)
(*     >>> fizz_buzz 50 *)
(*     0 *)
(*     >>> fizz_buzz 78 *)
(*     2 *)
(*     >>> fizz_buzz 79 *)
(*     3 *)
let rec fizz_buzz (n : int) : int =
    if n <= 0 then 0
    else if n mod 11 = 0 || n mod 13 = 0 then
        let num_sevens = count_digits 7 n in
        num_sevens + fizz_buzz (n - 1)
    else
        fizz_buzz (n - 1)

let rec count_digits (digit : int) (n : int) : int =
    if n <= 0 then 0
    else if n mod 10 = digit then
        1 + count_digits digit (n / 10)
    else
        count_digits digit (n / 10)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:26: Unbound value "count_digits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int =
    if n <= 0 then 0
    else if n mod 11 = 0 || n mod 13 = 0 then
        1 + count_digits 7 (n - 1)
    else
        fizz_buzz (n - 1)

let rec count_digits (digit : int) (n : int) : int =
    if n <= 0 then 0
    else if n mod 10 = digit then
        1 + count_digits digit (n / 10)
    else
        count_digits digit (n / 10)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "count_digits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int =
    if n <= 0 then 0
    else if n mod 11 = 0 || n mod 13 = 0 then
        1 + count_digits 7 (n - 1)
    else
        fizz_buzz (n - 1)

let rec count_digits (digit : int) (n : int) : int =
    if n <= 0 then 0
    else if n mod 10 = digit then
        1 + count_digits digit (n / 10)
    else
        count_digits digit (n / 10)

let count_digits (digit : int) (n : int) : int =
    let rec count_digits_helper n count =
        if n <= 0 then count
        else if n mod 10 = digit then
            count_digits_helper (n / 10) (count + 1)
        else
            count_digits_helper (n / 10) count
    in
    count_digits_helper n 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "count_digits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int =
    if n <= 0 then 0
    else if n mod 11 = 0 || n mod 13 = 0 then
        1 + count_digits 7 (n - 1)
    else
        fizz_buzz (n - 1)

let rec count_digits (digit : int) (n : int) : int =
    if n <= 0 then 0
    else if n mod 10 = digit then
        1 + count_digits digit (n / 10)
    else
        count_digits digit (n / 10)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "count_digits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int =
    if n <= 0 then 0
    else if n mod 11 = 0 || n mod 13 = 0 then
        1 + count_digits 7 (n - 1)
    else
        fizz_buzz (n - 1)

let rec count_digits (digit : int) (n : int) : int =
    if n <= 0 then 0
    else if n mod 10 = digit then
        1 + count_digits digit (n / 10)
    else
        count_digits digit (n / 10)

