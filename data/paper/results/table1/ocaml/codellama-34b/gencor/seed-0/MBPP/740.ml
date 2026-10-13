
let rec tuple_to_dict (test_tup :  int * int * int * int * int * int) : (int * int) list =
    match tuple_to_dict test_tup with
        | (a, b), (c, d) -> [(a, b); (c, d)]
        | (a, b), (c, d), (e, f) -> [(a, b); (c, d); (e, f)]
        | (a, b), (c, d), (e, f), (g, h) -> [(a, b); (c, d); (e, f); (g, h)]
        | (a, b), (c, d), (e, f), (g, h), (i, j) -> [(a, b); (c, d); (e, f); (g, h); (i, j)]
        | (a, b), (c, d), (e, f), (g, h), (i, j), (k, l) -> [(a, b); (c, d); (e, f); (g, h); (i, j); (k, l)]in
  tuple_to_dict(1,2,3,4,5,6,7,8)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given tuple to a key-value association list using adjacent elements. https://www.geeksforgeeks.org/mlthon-convert-tuple-to-adjacent-pair-association list/ *)
