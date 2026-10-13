(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  if test_tup1 = [] || test_tup2 = [] then
    test_tup1 @ test_tup2
  else
    let rec max_elements' (test_tup1 : int list list) (test_tup2 : int list list) (acc : int list list) : int list list =
      match test_tup1, test_tup2 with
      | [], _ -> acc @ test_tup2
      | _, [] -> acc @ test_tup1
      | (hd1 :: tl1), (hd2 :: tl2) ->
        if hd1 <= hd2 then
          max_elements' tl1 tl2 (hd1 :: acc)
        else
          max_elements' tl1 tl2 (hd2 :: acc)
    in
    max_elements' test_tup1 test_tup2 []

