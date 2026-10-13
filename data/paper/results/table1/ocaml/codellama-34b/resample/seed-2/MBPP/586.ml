(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
let rec split_Arr (l : int list) (n : int) : int list =
    match l with
    | [] -> []
    | _ :: xs when n > 0 -> split_Arr xs (n - 1)
    | x :: _ when n <= 0 -> x :: []

let rec add_First_Part (l : int list) : int list =
    match l with
    | [] -> []
    | _ -> add_First_Part l @ l

let rotate_List (l : int list) : int list =
    let rec helper (l : int list) : int list =
        match l with
        | [] -> []
        | x :: xs -> x :: helper xs
    in
    helper l @ helper l

