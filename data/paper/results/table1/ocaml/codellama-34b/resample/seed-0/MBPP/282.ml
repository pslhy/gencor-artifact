(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to subtract two lists element-wise. *)
let rec sub_list (nums1 : int list) (nums2 : int list) : int list =
    match nums1, nums2 with
    | [], [] -> []
    | hd1 :: tl1, hd2 :: tl2 -> hd1 - hd2 :: sub_list tl1 tl2
    | _ -> failwith "Lists are not the same length"

