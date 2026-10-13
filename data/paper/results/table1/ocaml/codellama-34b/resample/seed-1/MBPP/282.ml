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
    | x :: xs, y :: ys -> (x - y) :: sub_list xs ys
    | _, _ -> failwith "Lists must have the same length"

