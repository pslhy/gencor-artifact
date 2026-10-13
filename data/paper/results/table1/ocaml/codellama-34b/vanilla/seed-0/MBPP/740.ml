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



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given tuple to a key-value association list using adjacent elements. https://www.geeksforgeeks.org/mlthon-convert-tuple-to-adjacent-pair-association list/ *)
