(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Circular shift the digits of the integer x, shift the digits right by shift *)
(*     and return the result as a string. *)
(*     If shift > number of digits, return digits reversed. *)
(*     >>> circular_shift 12 1 *)
(*     "21" *)
(*     >>> circular_shift 12 2 *)
(*     "12" *)
let rec circular_shift (x : int) (shift : int) : string =
    let digits = String.length (string_of_int x) in
    if shift >= digits then
        let s = string_of_int x in
        s.[digits-1] :: s.[0..digits-2] |> List.to_string
    else
        let s = string_of_int x in
        s.[shift..digits-1] ^ s.[0..shift-1]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:17: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
    let digits = String.length (string_of_int x) in
    if shift >= digits then
        let s = string_of_int x in
        s.[digits-1] :: s.[0..digits-2] |> List.to_string
    else
        let s = string_of_int x in
        s.[shift..digits-1] ^ s.[0..shift-1]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:17: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
    let digits = String.length (string_of_int x) in
    if shift >= digits then
        let s = string_of_int x in
        s.[digits-1] :: s.[0..digits-2] |> List.to_string
    else
        let s = string_of_int x in
        s.[shift..digits-1] ^ s.[0..shift-1]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:17: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
    let digits = String.length (string_of_int x) in
    if shift >= digits then
        let s = string_of_int x in
        s.[digits-1] :: s.[0..digits-2] |> List.to_string
    else
        let s = string_of_int x in
        s.[shift..digits-1] ^ s.[0..shift-1]

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:17: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec circular_shift (x : int) (shift : int) : string =
    let digits = String.length (string_of_int x) in
    if shift >= digits then
        let s = string_of_int x in
        s.[digits-1] :: s.[0..digits-2] |> List.to_string
    else
        let s = string_of_int x in
        s.[shift..digits-1] ^ s.[0..shift-1]

