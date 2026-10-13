let rec div_list (nums1 : int list) (nums2 : int list) : float list =
  match (nums1, nums2) with
  | (h1::t1, h2::t2) -> if h2 <> 0 then (float h1 /. float h2) :: (div_list t1 t2)
                        else (float max_int) :: (div_list t1 t2)
  | _ -> []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to divide two lists element wise. *)
