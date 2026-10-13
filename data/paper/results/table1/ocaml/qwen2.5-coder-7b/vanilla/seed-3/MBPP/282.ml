let rec sub_list (nums1 : int list) (nums2 : int list) : int list = match (nums1, nums2) with
  | ([], []) -> []
  | (x::xs, y::ys) -> (x - y)::(sub_list xs ys)
  | _ -> failwith "Lists must be of the same length"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to subtract two lists element-wise. *)
