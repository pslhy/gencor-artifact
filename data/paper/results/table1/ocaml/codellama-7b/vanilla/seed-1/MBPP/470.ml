let rec add_pairwise (test_tup :  int * int * int * int * int) :  int * int * int * int =
match test_tup with
|  (a, b, c, d), (e, f, g, h) ->  (a + b, c + d, e + f, g + h)

let test_tup : (int * int * int * int * int) = (1, 2, 3, 4, 5)
printf "%d * %d = %d\n" (add_pairwise (test_tup, test_tup))  (* should be 4, which is 2+2 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the pairwise addition of the neighboring elements of the given tuple. *)
