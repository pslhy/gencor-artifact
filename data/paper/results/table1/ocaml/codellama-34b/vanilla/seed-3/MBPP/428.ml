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
              let next_gap = List.take gap my_list in
              let sorted_list = sort_gap (gap - 1) (List.drop gap my_list) in
              sort_insertion sorted_list next_gap
        in
        sort_gap_aux gap my_list
    in
    sort_gap (List.length my_list) my_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
