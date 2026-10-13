(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to divide two lists element wise. *)
let rec div_list (nums1 : int list) (nums2 : int list) : float list =
    match nums1, nums2 with
    | [], [] -> []
    | n1 :: ns1, n2 :: ns2 -> (float_of_int n1) /. (float_of_int n2) :: div_list ns1 ns2
    | _ -> failwith "Lists should be of equal length"

