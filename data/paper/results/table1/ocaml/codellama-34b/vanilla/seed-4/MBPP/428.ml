let rec shell_sort (my_list : int list) : int list = 
    (* insertion sort algorithm implementation with the help of List.mapi function *)
    let length = List.length my_list in
    let insertion_sort k = 
        let rec sort_helper list1 list2 = 
            match list2 with 
            | [] -> list1
            | h :: t -> if k >= 0 && k < List.length list2 && list2.(k) < list1.List.head then sort_helper list2 list1 else list1 @ [h]
        sort_helper list2 [] list1
    List.mapi (fun i x -> insertion_sort i x) my_list;;

# testing the shell_sort function
let my_list = [1; 4; 2; 5; 6; 2; 3; 7; 8];;
let sorted_list = shell_sort my_list;;
print_endline sorted_list;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
