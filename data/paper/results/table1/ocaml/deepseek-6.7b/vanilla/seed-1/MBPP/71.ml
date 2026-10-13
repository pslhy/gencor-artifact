let rec comb_sort (nums : int list) : int list =
  let shrink_factor = (fun x -> float_of_int x / 1.3) in
  let rec swap (nums, i, j) =
    if i = j then nums else
    let tmp = List.nth nums i in
    let nums = List.set_at_(int_of_float i) (List.nth nums j) nums in
    let nums = List.set_at_(int_of_float j) tmp nums in
    nums in
  let min_iteration (nums, s, swapped, len_) =
    let (swapped, nums) =
      let rec iter (i, swapped, nums) =
        if i < len_ then 
          let nums = if List.nth nums i > List.nth nums (i + s) then swap (nums, i, (i + s)) else nums in
          iter (i + s, swapped, nums)
        else (swapped, nums) in
      iter (0, swapped, nums) in
    (min (len_ / s) (if swapped then 1 else 0), nums) in
  let rec sort_ (nums, s, len_) =
    if s > 1 then 
      let (iter, nums) = min_iteration (nums, s, false, len_) in
      if iter > 1 then sort_ (nums, s, len_) else (nums, len_)
    else (nums, len_) in
  let (nums, _) = sort_ (nums, int_of_float (shrink_factor (List.length nums)), List.length nums) in
  nums;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
