let rec div_list (nums1 : int list) (nums2 : int list) : float list = 
    match (nums1, nums2) with 
    | ([], []) -> 
            [] 
    | (num1::nums1', num2::nums2') -> 
            (float_of_int(num1) /. float_of_int(num2)) :: div_list(nums1', nums2')
    | _ -> 
            failwith "div_list: lists have different lengths"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to divide two lists element wise. *)
