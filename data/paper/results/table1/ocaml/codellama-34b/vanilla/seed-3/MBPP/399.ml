let rec bitwise_xor (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
  if(test_tup1 = test_tup2) then
    (0,0,0,0)
  else
    let (i,j,k,l) = test_tup1 in
    let (m,n,o,p) = test_tup2 in
    (i mod m, j mod n, k mod o, l mod p)
    
let test_tup1 = (1,3,4,5)
let test_tup2 = (2,3,5,6)

print_string((bitwise_xor test_tup1 test_tup2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform the mathematical bitwise xor operation across the given tuples. *)
