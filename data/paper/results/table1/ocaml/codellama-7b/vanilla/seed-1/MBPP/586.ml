let rec split_Arr (l : int list) (n : int) : int list =
    let rec aux (l : int list) (acc : int list) : int list =
        match l with
        | [] -> acc
        | x :: xs ->
            if n = 0 then
                acc @ [x] @ xs
            else
                aux xs (x :: acc)
    in
    aux l []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
