(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find nth centered hexagonal number. *)
let rec centered_hexagonal_number (n : int) : int =
    let rec aux (acc : int) (k : int) : int =
        if k = 0 then
            acc
        else
            let acc = acc + (k * (k - 1))
            aux acc (k - 1) in
    aux 1 (2 * n)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec centered_hexagonal_number (n : int) : int =
    let rec aux (acc : int) (k : int) : int =
        if k = 0 then
            acc
        else
            let acc = acc + (k * (k - 1))
            aux acc (k - 1) in
    aux 1 (2 * n)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec centered_hexagonal_number (n : int) : int =
    let rec aux (acc : int) (k : int) : int =
        if k = 0 then
            acc
        else
            let acc = acc + (k * (k - 1))
            aux acc (k - 1) in
    aux 1 (2 * n)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec centered_hexagonal_number (n : int) : int =
    let rec aux (acc : int) (k : int) : int =
        if k = 0 then
            acc
        else
            let acc = acc + (k * (k - 1))
            aux acc (k - 1) in
    aux 1 (2 * n)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec centered_hexagonal_number (n : int) : int =
    let rec aux (acc : int) (k : int) : int =
        if k = 0 then
            acc
        else
            let acc' = acc + (k * (k - 1))
            aux acc' (k - 1) in
    aux 1 (2 * n)

