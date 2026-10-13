let rec div_list (nums1 : int list) (nums2 : int list) : float list =
  if nums1 = [] || nums2 = [] then
    []
  else
    (float_of_int(List.hd nums1) /. float_of_int(List.hd nums2)) :: div_list (List.tl nums1) (List.tl nums2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to divide two lists element wise. *)
