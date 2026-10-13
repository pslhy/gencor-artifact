(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
let rec armstrong_number (number : int) : bool = 
    let digits = number |> string_of_int |> String.to_list |> List.map ~f:int_of_char in
    let sum = digits |> List.fold_left ~f:( + ) ~init:0 in
    sum = (number |> string_of_int |> String.to_list |> List.length |> List.hd |> Option.get) in

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool = 
    let digits = number |> string_of_int |> String.to_list |> List.map ~f:int_of_char in
    let sum = digits |> List.fold_left ~f:( + ) ~init:0 in
    sum = (number |> string_of_int |> String.to_list |> List.length |> List.hd |> Option.get)

