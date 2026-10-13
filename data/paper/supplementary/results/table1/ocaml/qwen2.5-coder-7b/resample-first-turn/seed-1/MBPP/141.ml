let rec pancake_sort (nums : int list) : int list = 
  let rec flip (nums: int list) (k: int) : int list = 
    if k <= 0 then nums
    else let (first, rest) = List.split_at k nums in List.rev first @ rest
  in
  let rec sort (nums : int list) (len : int) : int list = 
    if len <= 1 then nums
    else let max_idx = List.index_of_max nums in
         let num_elements_to_flip = max_idx + len in
         let nums_flipped = flip nums num_elements_to_flip in
         let nums_flipped_again = flip nums_flipped len in
         sort nums_flipped_again (len - 1)
  in
  sort nums (List.length nums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
