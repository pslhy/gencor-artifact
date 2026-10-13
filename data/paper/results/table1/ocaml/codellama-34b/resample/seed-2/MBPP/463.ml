(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
let rec max_subarray_product (arr : int list) : int =
    match arr with
    | [] -> 0
    | x :: xs ->
        let rest = max_subarray_product xs in
        let product = x * rest in
        max product (1 + rest)

