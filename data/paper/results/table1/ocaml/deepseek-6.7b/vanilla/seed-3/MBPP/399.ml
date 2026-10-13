let rec bitwise_xor (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
  match (test_tup1, test_tup2) with
  | ((a, b, c, d), (e, f, g, h)) -> (a lxor e, b lxor f, c lxor g, d lxor h)

(* Example Usage *)
let test1 = (1, 2, 3, 4)
let test2 = (5, 6, 7, 8)

let res = bitwise_xor test1 test2 
let _ = print_int(fst(res)); print_string" "; print_int(snd(res)); print_string" "; print_int(thd(res)); print_string" "; print_int(frth(res)); print_string"\n"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform the mathematical bitwise xor operation across the given tuples. *)
