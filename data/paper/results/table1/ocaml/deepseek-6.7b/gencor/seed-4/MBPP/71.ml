
let rec comb_sort (nums : int list) : int list =
  let shrink_factor x = float_of_int x / 1.3 in
  let rec compare_and_swap (list : int list) (length : int) (idx : int) =
    if idx = 0 then list
    else
      let new_list =
        if List.nth list idx > List.nth list (idx - 1) then
          let tmp = List.nth list (idx - 1) in
          let list = List.mapi (fun i x -> if i = (idx - 1) then list.((idx)) else (if i = idx then tmp else x)) list in
          list
        else list
      in
      let new_list = compare_and_swap new_list length (idx - 1) in
      new_list
  in
  let rec sort_pass (list : int list) (length : int) (gap : int) =
    if gap <= 1 then list
    else
      let list =
        let rec cmp (i : int) =
          if i >= length then list
          else
            let a = List.nth list i in
            let b = List.nth list (i + gap) in
            let list =
              List.mapi (fun j x -> if (j = i) || (j = (i + gap)) then if j = i then b else a else x) list
            in
            let list = compare_and_swap list length i in
            cmp (i + 1)
        in
        cmp 0
      in
      let list = compare_and_swap list (length - gap) (length - 2) in
      sort_pass list length (int_of_float (shrink_factor (float_of_int gap)))
  in
  let length = List.length nums in
  let gap = length in
  let list = sort_pass nums length gap in
  list

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
