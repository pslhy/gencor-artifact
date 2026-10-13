let rec count_reverse_pairs (test_list : string list) : int =
    let rec check_reverse (a : string) (b : string) : bool =
        a = String.rev b
    in
    let rec recur (elem : string) (remain : string list) (count : int) : int =
        match remain with
        | [] -> count
        | h::t -> if check_reverse elem h then recur elem t (count + 1)
                  else recur elem t count
    in
    let rec helper (lst : string list) (res : int) : int =
        match lst with
        | [] -> res
        | h::t -> helper t (res + recur h t 0)
    in
    helper test_list 0
;;



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
