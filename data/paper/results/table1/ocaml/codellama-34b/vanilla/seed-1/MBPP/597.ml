let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
    let rec aux arr1 arr2 k count =
        match arr1, arr2 with
        | [], _ -> None
        | _, [] -> None
        | x::xs, y::ys ->
            if count = k then
                Some x
            else if x <= y then
                aux xs arr2 (count + 1)
            else
                aux arr1 ys (count + 1)
    in
    aux arr1 arr2 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
