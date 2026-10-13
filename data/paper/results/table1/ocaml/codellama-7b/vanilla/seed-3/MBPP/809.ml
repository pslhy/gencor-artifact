let rec check_smaller (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) : bool =
  if test_tup1 = test_tup2 then
    true
  else if fst test_tup2 < snd test_tup1 then
    check_smaller (test_tup1, (snd test_tup1), snd test_tup2)
  else
    false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if each element of second tuple is smaller than its corresponding element in the first tuple. *)
