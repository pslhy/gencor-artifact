(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to perform index wise multiplication of list elements in the given two lists. *)
let rec index_multiplication (test_tup1 : int list list) (test_tup2 : int list list) : int list list = 
    let (hd1, tl1) = List.hd test_tup1, List.tl test_tup1 in
    let (hd2, tl2) = List.hd test_tup2, List.tl test_tup2 in
    match (hd1, hd2) with 
      | (0, _) -> (hd2, index_multiplication hd1)
      | (_, 0) -> (hd1, index_multiplication hd2)
      | _ -> (hd1 * hd2, index_multiplication (List.drop 1 hd1) tl1 tl2)

