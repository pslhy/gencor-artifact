let rec tuple_to_dict (test_tup :  int * int * int * int * int * int) : (int * int) list =
    match test_tup with
    | (x,y,z,w,v,u) -> [(x, y); (y, z); (z, w); (w, v); (v, u)]
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given tuple to a key-value association list using adjacent elements. https://www.geeksforgeeks.org/mlthon-convert-tuple-to-adjacent-pair-association list/ *)
