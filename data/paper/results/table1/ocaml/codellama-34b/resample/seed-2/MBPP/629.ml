(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find even numbers from a list of numbers. *)
let rec split (list : int list) : int list =
    match list with
    | [] -> []
    | x :: xs -> x :: (split xs)

let evens (list : int list) : int list =
    list |> split |> filter (fun x -> x mod 2 = 0)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:22: Unbound value "filter" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split (list : int list) : int list =
    match list with
    | [] -> []
    | x :: xs -> x :: (split xs)

let evens (list : int list) : int list =
    let filter x = x mod 2 = 0 in
    list |> split |> filter

