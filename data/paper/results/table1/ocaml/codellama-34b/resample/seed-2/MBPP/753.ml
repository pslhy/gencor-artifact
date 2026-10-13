(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    match test_list with
    | [] -> []
    | (_, x) :: remainder ->
        if k = 0 then []
        else (x, Utils.insertionSort(remainder, Utils.compareInt))

let test () =
    let test_list = [("one", 1); ("two", 2); ("three", 3); ("four", 4); ("five", 5)]
    let expected = [("one", 1); ("two", 2); ("three", 3)]
    assert (min_k test_list 3 = expected)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    match test_list with
    | [] -> []
    | (s, x) :: remainder ->
        if k = 0 then []
        else (s, x) :: min_k remainder (k - 1)

