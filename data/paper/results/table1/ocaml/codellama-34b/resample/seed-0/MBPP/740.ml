(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert the given tuple to a key-value association list using adjacent elements. https://www.geeksforgeeks.org/mlthon-convert-tuple-to-adjacent-pair-association list/ *)
let rec tuple_to_dict (test_tup :  int * int * int * int * int * int) : (int * int) list =
    match tup with
    | (x, y, z, a, b, c) -> (
        match tup with
        | (x1, y1, z1, a1, b1, c1) -> [(x, y); (y, z); (z, a); (a, b); (b, c)]
        | (x1, y1, z1, a1, b1) -> [(x, y); (y, z); (z, a); (a, b)]
        | (x1, y1, z1, a1) -> [(x, y); (y, z); (z, a)]
        | (x1, y1, z1) -> [(x, y); (y, z)]
        | (x1, y1) -> [(x, y)]
        | [] -> []
    )

let test_tuple = (1, 2, 3, 4, 5, 6)
let result = tuple_to_dict test_tuple

Printf.printf "%d %d %d %d %d %d" result.(0) result.(1) result.(2) result.(3) result.(4) result.(5)


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:11: Unbound value "tup" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_to_dict (test_tup :  int * int * int * int * int * int) : (int * int) list =
    match tup with
    | (x, y, z, a, b, c) -> [(x, y); (y, z); (z, a); (a, b); (b, c)]
    | (x1, y1, z1, a1, b1) -> [(x1, y1); (y1, z1); (z1, a1); (a1, b1)]
    | (x2, y2, z2, a2) -> [(x2, y2); (y2, z2); (z2, a2)]
    | (x3, y3, z3) -> [(x3, y3); (y3, z3)]
    | (x4, y4) -> [(x4, y4)]
    | [] -> []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:11: Unbound value "tup" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_to_dict (test_tup :  int * int * int * int * int * int) : (int * int) list =
    let (x, y, z, a, b, c) = test_tup in
    [(x, y); (y, z); (z, a); (a, b); (b, c)]

