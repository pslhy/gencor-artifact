
let rec tuple_to_dict (test_tup :  int * int * int * int * int * int) : (int * int) list = 
    match test_tup with
    | e1, e2, e3, e4, e5, e6 ->
        [(e1, e2), (e3, e4), (e5, e6)]

exception NotTupleError

let rec find_duplicate_elems (tuple : int * int) : int list =
    match tuple with
    | h1, h2 ->
        if h1 <> h2 then [h1];
        if h2 <> h1 then [h2]
        else []

let rec is_duplicate (nums : int list) : bool =
    match nums with
    | h :: t ->
        if List.mem h t then
            true
        else
            is_duplicate t

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given tuple to a key-value association list using adjacent elements. https://www.geeksforgeeks.org/mlthon-convert-tuple-to-adjacent-pair-association list/ *)
