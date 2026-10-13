let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list =
    let rec union_helper (test_tup1 : int list) (test_tup2 : int list) : int list =
        match test_tup1, test_tup2 with
        | [], [] -> []
        | x :: test_tup1, [] -> x :: union_helper (test_tup1)
        | [], x :: test_tup2 -> x :: union_helper (test_tup2)
        | x :: test_tup1, y :: test_tup2 ->
            if x = y then
                x :: union_helper (test_tup1) (test_tup2)
            else
                y :: union_helper (test_tup1) (test_tup2)

    in
    (union_helper (test_tup1) (test_tup2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
