let rec kth_element (arr : int list) (k : int) : int =
    let rec aux arr k i =
        match arr with
        | [] -> None
        | x :: _ when i = k -> Some x
        | _ :: xs -> aux xs k (i + 1)
    in
    aux arr k 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the kth element in the given list using 1-based indexing. *)
