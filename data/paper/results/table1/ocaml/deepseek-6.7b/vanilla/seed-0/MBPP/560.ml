let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list =
    match test_tup1, test_tup2 with
    | [], [] -> []
    | [], ys -> ys
    | xs, [] -> xs
    | x::xs, y::ys ->
    begin
        if x < y then x :: union_elements xs (y::ys)
        else if x > y then y :: union_elements (x::xs) ys
        else x :: union_elements xs ys
    end;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
