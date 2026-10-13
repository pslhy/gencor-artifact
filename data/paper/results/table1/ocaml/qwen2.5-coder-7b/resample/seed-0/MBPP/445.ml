(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to perform index wise multiplication of list elements in the given two lists. *)
let rec index_multiplication (test_tup1 : int list list) (test_tup2 : int list list) : int list list = 
  let rec helper l1 l2 acc = 
    match l1, l2 with
    | [], [] -> List.rev acc
    | h1::t1, h2::t2 -> helper t1 t2 ((h1 * h2) :: acc)
    | _ -> raise (Invalid_argument "lists must be of the same length") 
  in List.map (helper (List.head test_tup1) (List.head test_tup2)) (List.tails test_tup1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:24: Unbound value "List.head" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec index_multiplication (test_tup1 : int list list) (test_tup2 : int list list) : int list list = 
  let rec helper l1 l2 acc = 
    match l1, l2 with
    | [], [] -> List.rev acc
    | h1::t1, h2::t2 -> helper t1 t2 ((h1 * h2) :: acc)
    | _ -> raise (Invalid_argument "lists must be of the same length") 
  in List.map (helper (List.hd test_tup1) (List.hd test_tup2)) (List.tl test_tup1)

