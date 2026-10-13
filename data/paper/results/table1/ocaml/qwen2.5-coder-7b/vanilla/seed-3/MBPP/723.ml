let rec count_same_pair (nums1 : int list) (nums2 : int list) : int = 
  let rec helper nums1 nums2 count =
    match (nums1, nums2) with
    | ([], []) -> count
    | (h1::t1, h2::t2) -> 
        if h1 = h2 then helper t1 t2 (count + 1)
        else helper t1 t2 count
    | _ -> raise (Invalid_argument "Lists must be of the same length")
  in
  helper nums1 nums2 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     The input is defined as two lists of the same length. Write a function to count indices where the lists have the same values. *)
