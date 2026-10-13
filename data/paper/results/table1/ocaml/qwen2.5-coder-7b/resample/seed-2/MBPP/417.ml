(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
let rec group_tuples (input : string list list) : string list list = 
    let rec find_common (these : string list) (rest : string list list) : string list =
        match these with
        | [] -> these
        | x :: xs ->
            match rest with
            | [] -> these
            | y :: ys ->
                if exists (fun list -> List.mem x list) ys 
                then find_common (x :: xs) ys 
                else these
    in
    match input with
    | [] -> []
    | x :: xs -> find_common x xs :: group_tuples xs

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:20: Unbound value "exists" *)
(*     Hint: Did you mean "exit"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec group_tuples (input : string list list) : string list list = 
    let rec find_common (these : string list) (rest : string list list) : string list =
        match these with
        | [] -> these
        | x :: xs ->
            match rest with
            | [] -> these
            | y :: ys ->
                if List.exists (fun list -> List.mem x list) ys 
                then find_common (x :: xs) ys 
                else these
    in
    match input with
    | [] -> []
    | x :: xs -> find_common x xs :: group_tuples xs

