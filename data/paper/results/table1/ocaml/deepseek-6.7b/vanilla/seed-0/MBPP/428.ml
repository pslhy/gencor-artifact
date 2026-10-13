let rec shell_sort (my_list : int list) : int list =
    let rec sort_next_interval (my_list: int list) (interval : int ) : int list =
    match my_list with
    | [] -> []
    | _ when interval > List.length my_list -> my_list
    | _ ->
    let (first_interval, second_interval) = List.fold_right (fun x (a,b) -> ((x :: a),(match b with | [] -> [] | _::_ -> (List.nth_error b interval)::a ))) my_list ([],[]) in 
    let sorted_interval = List.fold_right (fun (a,b) acc -> match (a,b) with | (None,None) -> acc | (Some x,None) -> x :: acc | (Some x, Some y) -> if x <= y then x :: y :: acc else y :: x :: acc) (List.combine first_interval (match second_interval with | [] -> [] | _ -> Some (List.nth_error second_interval interval))) [] in 
    let (sorted_first, _ :: sorted_second) = List.fold_right (fun x (a,b) -> ((x :: a), (match b with | [] -> [] | _::_ -> (List.hd_error b) :: a))) sorted_interval ([], []) in 
    sort_next_interval sorted_first (interval / 2) @ sort_next_interval sorted_second (interval / 2)
    in sort_next_interval my_list ((List.length my_list) / 2)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
