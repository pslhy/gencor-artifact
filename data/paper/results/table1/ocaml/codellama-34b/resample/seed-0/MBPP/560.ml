(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list =
    match test_tup1 with
    | [] -> test_tup2
    | x :: test_tup1 ->
        if List.mem x test_tup2 then union_elements test_tup1 test_tup2
        else x :: union_elements test_tup1 test_tup2
        | _ -> raise (Invalid_argument "List empty")

