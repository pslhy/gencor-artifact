let rec comb_sort (nums : int list) : int list = 
  let shrink_factor = 1.3 in
  let swap a b = (nums.[a], nums.[b]) = (nums.[b], nums.[a]) in
  let rec sort_factor (nums : int list) length : int list =
    if length <= 1 then nums
    else begin
      let delta = max (int_of_float (length /. shrink_factor)) 1 in
      let rec compare_and_swap i nums =
        if i + delta >= length then nums
        else if nums.[i] > nums.[i + delta] then compare_and_swap (i + 1) (swap i (i + delta) nums)
        else compare_and_swap (i + 1) nums
      in
      sort_factor (compare_and_swap 0 nums) delta
    end in
  sort_factor nums (List.length nums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
