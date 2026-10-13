let rec shell_sort (my_list : int list) : int list =
    let gap = List.length my_list / 2 in
    let rec sort (gap : int) (list : int list) : int list =
        if gap = 0 then list
        else
            let rec insertion_sort (list : int list) : int list =
                match list with
                | [] -> []
                | x :: rest -> insert x (insertion_sort rest)
                and insert (x : int) (list : int list) : int list =
                    match list with
                    | [] -> [x]
                    | y :: _ when x <= y -> x :: list
                    | y :: rest -> y :: insert x rest in
            let sorted_list = insertion_sort list in
            sort (gap / 2) sorted_list
    in sort gap my_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
