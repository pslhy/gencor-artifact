let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
  if test_tup1 = test_tup2 then
    raise (Invalid_argument "Tuples are identical")
  else
    let (i1, j1, k1, l1) = test_tup1 in
    let (i2, j2, k2, l2) = test_tup2 in
    if i1 <> i2 then
      (i1, j1, k1, l1)
    else if j1 <> j2 then
      (i1, j1, k1, l1)
    else if k1 <> k2 then
      (i1, j1, k1, l1)
    else
      (i1, j1, k1, l2)
;;

(* Test cases *)
let t1 = (100, 200, 300, 400);;
let t2 = (1, 2, 3, 4);;
let t3 = (100, 200, 300, 400);;
let t4 = (1, 2, 3, 4);;
find_dissimilar t1 t2;;
find_dissimilar t3 t4;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
