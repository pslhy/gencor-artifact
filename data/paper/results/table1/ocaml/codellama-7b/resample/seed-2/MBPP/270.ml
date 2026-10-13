(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even numbers at even positions of a list. *)
let rec sum_even_and_even_index (arr : int list) : int =
    match arr with
    | [] -> 0
    | (x::xs) ->
        let x = if Int.is_even x then x else 0
        let xs = sum_even_and_even_index xs
        x + xs

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_even_and_even_index (arr : int list) : int =
    match arr with
    | [] -> 0
    | x :: xs ->
        let x = if x mod 2 = 0 then x else 0
        let xs = sum_even_and_even_index xs
        x + xs

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_even_and_even_index (arr : int list) : int =
    match arr with
    | [] -> 0
    | x :: xs ->
        let x = if x mod 2 = 0 then x else 0
        let xs = sum_even_and_even_index xs
        x + xs

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_even_and_even_index (arr : int list) : int =
  match arr with
  | [] -> 0
  | x :: xs ->
    let x = if x mod 2 = 0 then x else 0 in
    let xs = sum_even_and_even_index xs in
    x + xs

