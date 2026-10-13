let rec count_reverse_pairs (test_list : string list) : int =
    let rec aux (acc : int) (l1 : string) (l2 : string) : int =
        match l1 with
        | [] -> acc
        | h1 :: t1 ->
            match l2 with
            | [] -> acc
            | h2 :: t2 ->
                if h1 = h2 && t1 = t2 then
                    aux (acc + 1) l1 t2
                else
                    aux acc l1 t2
    in
    match test_list with
    | [] -> 0
    | h :: t -> aux 0 h t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
