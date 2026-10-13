let rec comb_sort (nums : int list) : int list =
  let shrink_factor = 1.3 in
  let rec get_gap (gap : int) : int =
    if float_of_int (gap) /. shrink_factor < 1.0 then
      int_of_float (floor (gap /. shrink_factor))
    else
      gap in
  let rec swap_elements (split_nums : int list) (index_i : int) (index_j : int) : int list =
    if split_nums = [] then split_nums
    else if index_j >= List.length split_nums then split_nums
    else if split_nums.(index_i) > split_nums.(index_j)
    then
      let swap (x : int list) : int =
        if index_i = 0 then
          split_nums.(index_j)
        else if index_i = index_j then
          split_nums.(index_i - 1)
        else
          split_nums.(index_i - 1) in
      let swap_rest (x : int list) : int list =
        if index_i = 0 then
          List.replace_at swap_rest split_nums.(index_j)
        else if index_i = index_j then
          List.replace_at swap_rest split_nums.(index_i - 1)
        else
          List.replace_at swap_rest split_nums.(index_i - 1)
      in
      [ swap split_nums; swap_rest split_nums ]
    else
      [ split_nums.(index_i) ] @ swap_elements split_nums (index_i + 1) (index_j + 1) in
  let rec sorter (split_nums : int list) (gap : int) : int list =
    if gap <= 0 then
      split_nums
    else
      [ swap_elements split_nums 0 gap; sorter split_nums (get_gap gap) ]
  in
  sorter nums (List.length nums);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
