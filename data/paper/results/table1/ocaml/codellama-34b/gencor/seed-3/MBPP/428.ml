
let rec shell_sort (my_list : int list) : int list =
  if my_list = [] then []
  else
    let rec sort_gap (gap : int) (my_list : int list) : int list =
      if gap = 0 then my_list
      else
        let rec sort_insertion (cur_element : int) (sorted_list : int list) : int list =
          match sorted_list with
          | [] -> [cur_element]
          | h :: t ->
              if cur_element <= h then cur_element :: sorted_list
              else h :: sort_insertion cur_element t
        in
        let rec sort_gap_aux (gap : int) (my_list : int list) : int list =
          match my_list with
          | [] -> []
          | _ :: t ->
              let next_gap = List.nth my_list gap in
              List.append (sort_insertion next_gap my_list) (sort_gap_aux (gap + 1) t)
        in
        sort_gap_aux gap my_list
    in
    sort_gap 1 my_list

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
