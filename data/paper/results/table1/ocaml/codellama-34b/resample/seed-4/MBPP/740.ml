(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert the given tuple to a key-value association list using adjacent elements. https://www.geeksforgeeks.org/mlthon-convert-tuple-to-adjacent-pair-association list/ *)
let rec tuple_to_dict (test_tup :  int * int * int * int * int * int) : (int * int) list = 
    let (t1, t2, t3, t4, t5, t6) = test_tup in
    (* Creates a list of tuples from the input tuple *)
    [(t1, t2); (t3, t4); (t5, t6)];;

(* Example usage *)
print_string(tuple_to_dict (1, 2, 3, 4, 5, 6));; (* Output: [(1, 2), (3, 4), (5, 6)] *)

