let rec find_First_Missing (array : int list) : int =
    let rec aux (array : int list) (cur : int) : int * bool =
        match array with
        | [] -> (cur, true)
        | x :: xs ->
            if cur < x then (cur - 1, false)
            else aux xs (x + 1)
    in
    let (first, ok) = aux array (List.hd array + 1) in
    if ok then first else -1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest missing number from a sorted list of natural numbers. *)
