let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
    let test_tup1_sorted = List.sort compare test_tup1 in
    let test_tup2_sorted = List.sort compare test_tup2 in
    (* Get the corresponding maximum for each index in both lists *)
    let rec get_max_elements (test_list1 : int list) (test_list2 : int list) =
        match test_list1 with
        | [] -> []
        | _::test_list1_tl -> (
            match test_list2 with
            | [] -> get_max_elements test_list1_tl test_list2
            | _::test_list2_tl ->
                let max_element = max (List.hd test_list1) (List.hd test_list2) in
                max_element :: get_max_elements test_list1_tl test_list2_tl
        )
    in
    get_max_elements test_tup1_sorted test_tup2_sorted


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
