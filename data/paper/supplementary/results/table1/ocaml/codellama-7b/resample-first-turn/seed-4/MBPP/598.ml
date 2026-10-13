let rec armstrong_number (number : int) : bool = 
    let digits = number |> string_of_int |> String.to_list |> List.map ~f:int_of_char in
    let sum = digits |> List.fold_left ~f:( + ) ~init:0 in
    sum = (number |> string_of_int |> String.to_list |> List.length |> List.hd |> Option.get) in


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
