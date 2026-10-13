let rec bitwise_xor (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
match test_tup1, test_tup2 with
| (tup10,tup11,tup12,tup13), (tup20, tup21, tup22, tup23) ->
let result = (tup10 lxor tup20, tup11 lxor tup21, tup13 lxor tup23) in
match result with
| (res0,res1,res2,res3) ->
let (res0r,res1r,res2r,res3r) = bitwise_xor (tup11, tup12) (tup21, tup22) in
(res0 lxor res0r, res1 lxor res1r, res2 lxor res2r, res3 lxor res3r)
done;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform the mathematical bitwise xor operation across the given tuples. *)
