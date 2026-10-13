
let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
  match test_tup1 with
  | t1, t2, t3, t4 ->
    match test_tup2 with
    | t5, t6, t7, t8 ->
      if t1 = t5 && t2 = t6 && t3 = t7 && t4 = t8 then
        find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int)
      else
        (t1, t2, t3, t4) ::  int_of_float (|> 


      

      )

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
