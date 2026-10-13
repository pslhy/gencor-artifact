
let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list =
    match test_tup1 with
    | hd1 :: tl1 ->
        begin
            match test_tup2 with
            | hd2 :: tl2 ->
                if hd1 > hd2 then hd1 :: union_elements test_tup1 tl2
                else if hd1 < hd2 then hd2 :: union_elements test_tup2 tl1
                else union_elements test_tup1 tl1
            | [] -> hd1 :: test_tup2
        end
    | [] -> test_tup2

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
