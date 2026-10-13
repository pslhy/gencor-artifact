
let rec shell_sort (my_list : int list) : int list =
  match my_list with
  | [] -> []
  | [x] -> [x]
  | _ ->
    let h = 1
    in
      if h = 1
      then
        let sorted_list = List.sort ( fun x y -> compare x y ) (my_list)
        in
          shell_sort (sorted_list)
      else
        let sub_list = List.tl my_list
        in
          let sorted_sub_list = shell_sort sub_list
          in
            h::sorted_sub_list ;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
