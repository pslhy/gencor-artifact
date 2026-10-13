(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if each element of second tuple is smaller than its corresponding element in the first tuple. *)
let rec check_smaller (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) : bool =
  if(test_tup1 = test_tup2) then true
  else if test_tup1 < test_tup2 then false
  else check_smaller(List.tail test_tup1) (List.tail test_tup2)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:22: Unbound value "List.tail" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_smaller (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) : bool =
  if(test_tup1 = test_tup2) then true
  else if(test_tup1 < test_tup2) then false
  else (
    let (_, list1) = test_tup1 in
    let (_, list2) = test_tup2 in
    check_smaller(list1, list2)
  )

