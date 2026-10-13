let rec shell_sort (my_list : int list) : int list =
  match my_list with
  | [] -> []
  | [x] -> [x]
  | _ ->
    let h = 1
    while h < List.length my_list - 1 do
      h <- h * 3 + 1
    done;
    let rec insertion_sort aux my_list =
      match (aux, my_list) with
      | [], y :: ys -> insertion_sort [] ys
      | x :: xs, y :: ys when x >= y -> insertion_sort (x :: aux) ys
      | x :: xs, y :: ys -> insertion_sort (y :: aux) my_list
      | [], [] -> aux
    in
    insertion_sort [] (shell_sort (List.tl my_list)) @ insertion_sort [] my_list

let _ =
  let my_list = [4; 2; 7; 1; 3; 9; 8; 5; 6] in
  print_int_list (shell_sort my_list)

and print_int_list l =
  print_string "{";
  let rec aux = function
    | [] -> ()
    | [x] -> print_int x
    | x :: xs -> print_int x; print_string ", "; aux xs
  in
  aux l;
  print_string "}"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
