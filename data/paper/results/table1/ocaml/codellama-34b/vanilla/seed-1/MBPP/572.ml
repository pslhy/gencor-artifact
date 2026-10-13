let rec two_unique_nums (nums : int list) : int list =
    let rec aux nums acc =
        match nums with
        | [] -> acc
        | x1 :: x2 :: [] when x1 == x2 -> acc
        | x1 :: x2 :: xs ->
            if x1 != x2 then
                aux xs (x2 :: acc)
            else
                aux (x1 :: xs) acc
    in
    List.rev (aux nums [])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove duplicate numbers from a given number of lists. *)
