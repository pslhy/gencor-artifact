let rec shell_sort (my_list : int list) : int list =
    let rec aux (list : int list) (gap : int) : int list =
        match list with
        | [] -> []
        | x :: xs ->
            let temp = (head list :: aux (tail list) gap) in
            if gap = 1 then temp else temp @ [x]
    in
    let rec create_gaps (gaps : int list) : int =
        match gaps with
        | [] -> 1
        | x :: xs -> x * 3 + 1
    in
    let gaps = create_gaps [5; 3; 1] in
    aux my_list (List.hd gaps)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
