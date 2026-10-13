let rec comb_sort (nums : int list) : int list =
  let shrink_factor x = float_of_int x / 1.3 in
  let rec compare_and_swap (list : int list) (length : int) (idx : int) =
    if idx = 0 then list
    else
      let new_list =
        if List.nth list idx > List.nth list (idx - 1) then
          let tmp = List.nth list (idx - 1) in
          let list = List.mapi (fun i x -> if i = (idx - 1) then list.(@) idx else if i = idx then tmp else x) list
          in
          compare_and_swap list length (idx - 1)
        else list
      in
      compare_and_swap new_list length (idx - 1)
  in
  let rec sort_prog (list : int list) (length : int) : int list =
    if length > 1 then
      let new_length = int_of_float (shrink_factor (float_of_int length)) in
      let list = compare_and_swap list length (length - 1) in
      sort_prog list new_length
    else list
  in
  sort_prog nums (List.length nums)   
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
