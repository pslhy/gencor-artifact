let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let (t11, t12, t13, t14) = test_tup1 in 
    let (t21, t22, t23, t24) = test_tup2 in 
    if t11 = t21 then find_dissimilar (t12, t13, t14) (t22, t23, t24) 
    else if t12 = t22 && t13 = t23 && t14 = t24 then (0, 0, 0, 0) 
    else if t11 == t22 && t12 == t23 && t13 == t24 then (t11, t12, t13, t14) 
	else if t11 == t23 && t12 == t22 && t13 == t24 then (t11, t12, t13, t14) 
    else if t11 == t24 && t12 == t23 && t13 == t22 then (t11, t12, t13, t14) 
    else if t11 == t21 && t12 == t24 && t13 == t23 then (t11, t12, t13, t14) 
    else (t11, t12, t13, t14)



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
