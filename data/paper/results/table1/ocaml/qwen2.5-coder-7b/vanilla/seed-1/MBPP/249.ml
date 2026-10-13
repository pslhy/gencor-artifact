let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list = 
  List.filter (fun num -> List.mem num array_nums2) array_nums1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the intersection of two lists. *)
