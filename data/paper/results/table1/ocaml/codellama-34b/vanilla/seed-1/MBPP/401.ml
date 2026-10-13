let rec add_nested_tuples (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
    let rec aux tup1 tup2 =
        match tup1, tup2 with
        | [], [] -> []
        | h :: t, q :: w -> (h + q) :: aux t w
        | _, _ -> failwith "Lists must have the same length"
    in
    aux test_tup1 test_tup2

let add_nested_tuples l1 l2 =
    let rec aux acc l1 l2 =
        match l1, l2 with
        | [], [] -> acc
        | h :: t, q :: w -> 
            let new_head = (h, q) in
            let new_tail = (t, w) in
            aux (new_head :: acc) new_tail
        | _, _ -> failwith "Lists must have the same length"
    in
    aux [] l1 l2

let add_nested_tuples l1 l2 =
    match l1, l2 with
    | [], [] -> []
    | h1 :: t1, h2 :: t2 -> 
        let head = (h1, h2) in
        let tail = (t1, t2) in
        head :: aux tail
    | _, _ -> failwith "Lists must have the same length"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise addition of list elements in the given two nested lists. *)
