(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert the given tuple to a key-value association list using adjacent elements. https://www.geeksforgeeks.org/mlthon-convert-tuple-to-adjacent-pair-association list/ *)
let rec tuple_to_dict (test_tup :  int * int * int * int * int * int) : (int * int) list = 
    match test_tup with
    | e1, e2, e3, e4, e5, e6 ->
        [(e1, e2), (e3, e4), (e5, e6)]

exception NotTupleError

let rec find_duplicate_elems (tuple : int * int) : int list =
    match tuple with
    | h1, h2 ->
        if h1 <> h2 then [h1];
        else []

let rec check_duplicate_elems (tuple : int * int) : int option =
    match tuple with
    | h1, h2 ->
        if find_duplicate_elems tuple <> [] then Some h1;
        else None

let rec get_list_rank (list : int list) (elt : int) : int option =
    match list with
    | h :: t ->
        if elt = h then Some(t.length + 1);
        else get_list_rank t elt
    | [] ->
        None

let rec get_rank (tuple : int * int) (elt : int) : int option =
    match tuple with
    | h1, h2 ->
        if h1 = elt || h2 = elt then Some h1;
        else get_list_rank [h1; h2] elt

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_to_dict (test_tup :  int * int * int * int * int * int) : (int * int) list = 
    match test_tup with
    | h1,h2,h3,h4,h5,h6 ->
        [(h1,h2), (h3,h4), (h5,h6)]
    | _ ->
        failwith "Invalid input"

