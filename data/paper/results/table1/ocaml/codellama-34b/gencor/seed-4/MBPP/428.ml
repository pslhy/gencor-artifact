
let rec shell_sort (my_list : int list) : int list = 
    (* insertion sort algorithm implementation with the help of List.mapi function *)
    let length = List.length my_list in
    let insertion_sort k = 
        let rec sort_helper list1 list2 = 
            match list2 with 
            | [] -> list1
            | h :: t -> if k >= 0 && k < List.length list2 && list2.(k) < list1.((k - 1) && (k < 0 || k >= length)) then list1
            | h :: t -> if k = 0 then h :: list1
            | h :: t -> list1
        in
        List.fold_left sort_helper [] my_list
    in
    let sorted_list = List.mapi insertion_sort my_list in
    sorted_list

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
