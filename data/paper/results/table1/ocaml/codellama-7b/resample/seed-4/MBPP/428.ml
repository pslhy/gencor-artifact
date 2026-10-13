(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
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
        let sorted_list = shell_sort_helper (insertion_sort (List.take (my_list, init)) (List.drop (my_list, init + 1))) l_head (init + 1) in
        shell_sort_helper (insertion_sort my_list (my_list @ [init])) l_head
    in
    shell_sort_helper my_list l h

and insertion_sort (left : 'a list) (right : 'a list) : 'a list =
  match left with
  | [] -> right
  | _ ->
    let rec insertion_sort_helper (left : 'a list) (right : 'a list) : 'a list =
      match left with
      | [] -> right
      | h :: t ->
        let rec find_pos (l : 'a list) (x : 'a) (n : int) : 'a list =
          match l with
          | [] -> x :: l
          | h :: t ->
            if h >= x then
              x :: l
            else
              find_pos t x (n + 1)
        in
        insertion_sort_helper (find_pos (List.drop right 1) h n) right
    in
    insertion_sort_helper left right

let arg max_gap cur_gap =
  cur_gap := max_gap;
  cur_gap

let rec shell_sort_recurse (my_list : 'a list) (cur_gap : int ref) =
  match my_list with
  | [] -> my_list
  | _ ->
    let sorted_list = shell_sort (List.take my_list !cur_gap) in
    shell_sort_recurse (List.drop my_list !cur_gap) cur_gap

let shell_sort_list my_list =
  let max_gap = List.length my_list in
  let cur_gap = ref max_gap in
  shell_sort_recurse my_list cur_gap

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:18:62: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec shell_sort (my_list : int list) : int list =
  if List.length my_list <= 1 then
    my_list
  else
    let h = List.hd my_list in
    let t = List.tl my_list in
    let less_than_h = List.filter (fun x -> x < h) t in
    let greater_than_h = List.filter (fun x -> x > h) t in
    shell_sort (less_than_h @ [h] @ greater_than_h)

