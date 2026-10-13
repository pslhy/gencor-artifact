let rec unique_product (list_data : int list) : int =
    (* Define a function to check if a number is unique in a list *)
    let is_unique num (list_data : int list) : bool =
        (* Use the fold_left function to check if the number is in the list *)
        List.fold_left (fun (acc : bool) (x : int) -> if x = num then true else acc) false list_data
    in
    (* Use the map function to apply the is_unique function to each number in the list *)
    let unique_list = List.map (fun (x : int) -> if is_unique x list_data then Some x else None) list_data in
    (* Use the filter function to remove the Nones from the list *)
    let unique_list = List.filter (fun (x : int option) -> x <> None) unique_list in
    (* Use the fold_left function to calculate the product of the list *)
    List.fold_left (fun (acc : int) (x : int) -> acc * x) 1 unique_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to calculate the product of the unique numbers in a given list. *)
