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
    | hd1 :: tl1 ->
        begin
            match test_tup2 with
            | hd2 :: tl2 ->
                if hd1 > hd2 then hd1 :: unionElements(tl1) hd2 :: tl2
                else if hd1 < hd2 then hd1 :: unionElements(tl1) hd2 :: tl2
                else hd1 :: unionElements(tl1) tl2
            | _ -> test_tup1
        end
    | _ -> test_tup2

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:42: Unbound value "unionElements" *)
(*     Hint: Did you mean "union_elements"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list =
    match test_tup1 with
    | hd1 :: tl1 ->
        begin
            match test_tup2 with
            | hd2 :: tl2 ->
                if hd1 > hd2 then hd1 :: union_elements(tl1) hd2 :: tl2
                else if hd1 < hd2 then hd1 :: union_elements(tl1) hd2 :: tl2
                else hd1 :: union_elements(tl1) tl2
            | _ -> test_tup1
        end
    | _ -> test_tup2

