(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
let rec split_Arr (l : int list) (n : int) : int list =
    let rec aux l n acc =
        match l with
        | [] -> acc
        | x :: xs ->
            if n = 0 then
                aux xs n (acc @ [x])
            else
                aux xs (n - 1) (x :: acc)
    in
    aux l n []

let rec add_to_end l n =
    match l with
    | [] -> []
    | x :: xs -> if n = 0 then l @ xs else x :: add_to_end xs (n - 1)

let split_nth (l : int list) (n : int) : int list =
    let res = split_Arr l n in
    add_to_end res n

