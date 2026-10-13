
let rec shell_sort (my_list : int list) : int list = 
  let length = List.length my_list in
  let gap = ref (length / 2) in
  let rec inner_sort gap =
    if gap > 0 then
      let rec traverse index =
        if index + gap < length then
          let temp = List.nth my_list (index + gap) in
          let rec find correct_index =
            if correct_index >= 0 && List.nth my_list correct_index > temp then
              my_list
              |> List.mapi (fun i x -> if i = correct_index then temp else if i = index + gap then x else x)
              |> traverse (index + 1)
            else
              index
          in
          let correct_index = find (index - gap) in
          my_list
          |> List.mapi (fun i x -> if i = correct_index then List.nth my_list (index + gap) else if i = index + gap then x else x)
          |> inner_sort gap
        else
          inner_sort (gap / 2)
      in
      traverse 0
  in
  inner_sort !gap

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
