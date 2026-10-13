(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the union of the elements of two given lists and output them in sorted order. *)
let rec union_elements (test_tup1 : int list) (test_tup2 : int list) : int list =
    let rec aux (acc : int list) (l1 : int list) (l2 : int list) : int list = 
        match l1, l2 with
          | [], _ -> aux acc []
          | _, [] -> aux (List.rev_append acc l1)
          | h1::t1, h2::t2 ->
    if h1 = h2 then
        aux acc (t1 @ t2)
    else if h1 < h2 then
        aux (h1 :: acc) t1 t2
    else (* h2 < h1 *)
        aux (h2 :: acc) l1 t2
    in
let res = aux [] test_tup1 test_tup2 in
match res with
| [] -> []
| _::_ -> List.rev_append res acc

let test_case_fun (test_case_input : (int list * int list) list) (expected_output : int list) : bool =
    let test_fun (test_input : (int list * int list)) : (int list) =
        let (test_tup1, test_tup2) = test_input in
        (union_elements test_tup1 test_tup2)
    in
    let rec test_case_compute (test_case_input : (int list * int list) list) (acc : int list) : int list =
        match test_case_input with
        | [] -> acc
        | (test_tup1, test_tup2) :: tl ->
            let test_output = test_fun (test_tup1, test_tup2) in
            test_case_compute tl (test_output @ acc)
    in
    let test_output = test_case_compute test_case_input [] in
    test_output = expected_output

