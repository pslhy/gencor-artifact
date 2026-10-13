
let rec shell_sort (my_list : int list) : int list =
  if List.length my_list <= 0 then
    []
  else
    let length = List.length my_list in
    let h = 1 in
    let h_l = ref [] in
    while h <= (length / 2) do
      h_l := !h_l @ [(length - h) :: [h]]
    done;
    let l = h_l in
    let rec shell_sort_helper (my_list : int list) (l : int list) h : int list =
      match l with
      | [] -> my_list
      | _ ->
        let init = List.hd l in
        let l_head = List.tl l in
        let sorted_list = shell_sort_helper (List.rev (List.tl (List.rev my_list))) l_head (h - 1) in
        shell_sort_helper (sorted_list @ my_list) l_head h
    in
    shell_sort_helper my_list l h

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
