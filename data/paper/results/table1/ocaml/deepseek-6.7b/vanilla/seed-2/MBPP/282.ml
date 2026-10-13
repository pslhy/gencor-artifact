let rec sub_list (nums1 : int list) (nums2 : int list) : int list =
  match nums1, nums2 with
  | [], [] -> []
  | h1::t1, h2::t2 -> (h1 - h2) :: sub_list t1 t2
  | _ -> failwith "Lists are not the same length"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to subtract two lists element-wise. *)
